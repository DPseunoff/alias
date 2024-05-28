import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:logger/logger.dart';

import '../../../../common/localization/localization.dart';
import '../../../../common/theme/theme.dart';
import '../../../../common/ui/appbar.dart';
import '../../../../common/ui/button/tap_animation.dart';
import '../../../../common/ui/icons.dart';
import '../../../../domain/game/game_repository.dart';
import '../../../navigation/navigation.dart';
import '../cubit/play_process/play_process_cubit.dart';
import '../cubit/play_process/play_process_state.dart';
import '../cubit/play_timer/play_timer_cubit.dart';
import '../cubit/play_timer/play_timer_state.dart';
import '../cubit/play_timer/play_timer_ticker.dart';

part 'component/center_cards.dart';

part 'component/swip_able_widget.dart';

part 'component/timer_widget.dart';

part 'component/words_counter.dart';

class PlayPage extends AppPage {
  const PlayPage() : super(args: const {});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => PlayTimerCubit(
              ticker: const Ticker(),
              gameRepository: context.read<GameRepository>(),
            ),
          ),
          BlocProvider(
            create: (_) => PlayProcessCubit(
              gameRepository: context.read<GameRepository>(),
            ),
          ),
        ],
        child: const _PlayPageWidget(),
      );
}

class _PlayPageWidget extends StatelessWidget {
  const _PlayPageWidget();

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);
    return Column(
      children: [
        BlocConsumer<PlayTimerCubit, PlayTimerState>(
          listenWhen: (prev, curr) => prev.duration != curr.duration,
          listener: _onTimeOver,
          builder: (context, state) {
            return AliasAppBar(
              onBackTap: state.isPaused
                  ? () {
                      context.read<NavigationCubit>().pop();
                    }
                  : null,
              rightWidget: _TimerWidget(
                timeLeft: state.duration,
                isPaused: state.isPaused,
                onTap: () {
                  if (state.isPaused) {
                    _setResume(context);
                  } else {
                    _setPause(context, timeLeft: state.duration);
                  }
                },
              ),
            );
          },
        ),
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocSelector<PlayProcessCubit, PlayProcessState, int>(
                    selector: (state) => state.guessed,
                    builder: (context, count) => _WordsCounter(
                      title: strings.guessedTitle,
                      count: count,
                    ),
                  ),
                  const SizedBox(height: 390),
                  BlocSelector<PlayProcessCubit, PlayProcessState, int>(
                    selector: (state) => state.passed,
                    builder: (context, count) => _WordsCounter(
                      title: strings.passedTitle,
                      count: count,
                      inverse: true,
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Builder(
                    builder: (context) {
                      final isPaused = context.select(
                          (PlayProcessCubit bloc) => bloc.state.isPaused);
                      if (isPaused) {
                        return _StartCard(
                          title: strings.startTitle,
                          onTap: () => _setResume(context),
                        );
                      } else {
                        final word = context.select(
                          (PlayProcessCubit bloc) => bloc.state.currentWord,
                        );

                        return _SwipeAbleWidget(
                          key: UniqueKey(),
                          onDismissedUp: () =>
                              context.read<PlayProcessCubit>().guessWord(),
                          onDismissedDown: () =>
                              context.read<PlayProcessCubit>().passWord(),
                          child: _WordCard(
                            word: word,
                          ),
                        );
                      }
                    },
                  ),

                  /// TODO: придумать способ блокировки лучше
                  Builder(
                    builder: (context) {
                      final blocked = context.select(
                        (PlayProcessCubit bloc) => bloc.state.isOver,
                      );
                      if (!blocked) {
                        return const SizedBox.shrink();
                      }

                      return const SizedBox(
                        width: 294,
                        height: 294,
                        child: DecoratedBox(
                          decoration: BoxDecoration(),
                          child: IgnorePointer(
                            ignoring: true,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _onTimeOver(BuildContext context, PlayTimerState state) async {
    Logger().d(state.duration);
    if (state is PlayTimerStateComplete) {
      context.read<PlayProcessCubit>().overPlay();
      if (context.mounted) {
        context.read<NavigationCubit>().push(
              path: AppPageName.words.path,
            );
      }
    }
  }

  void _setResume(BuildContext context) {
    context.read<PlayTimerCubit>().start();
    context.read<PlayProcessCubit>().startPlay();
  }

  void _setPause(
    BuildContext context, {
    required int timeLeft,
  }) {
    context.read<PlayTimerCubit>().pause();
    context.read<PlayProcessCubit>().pause(
          timeLeftSec: timeLeft,
        );
  }
}
