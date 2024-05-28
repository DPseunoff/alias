import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/localization/localization.dart';
import '../../../../common/theme/components/checkbox.dart';
import '../../../../common/theme/theme.dart';
import '../../../../common/ui/footer.dart';
import '../../../../common/ui/icons.dart';
import '../../../../common/ui/text2.dart';
import '../../../../domain/game/game_repository.dart';
import '../../../navigation/navigation.dart';
import '../cubit/words_cubit.dart';
import '../cubit/words_state.dart';

part 'components/word_list_item.dart';

class WordsPage extends AppPage {
  const WordsPage() : super(args: const {});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => WordsCubit(
          gameRepository: context.read<GameRepository>(),
        ),
        child: const _WordsPageWidget(),
      );
}

class _WordsPageWidget extends StatelessWidget {
  const _WordsPageWidget();

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadiusDirectional.vertical(
                bottom: Radius.circular(24),
              ),
              boxShadow: [AppShadows.headerLight],
              color: AppColors.everWhite,
            ),
            child: Builder(
              builder: (context) {
                final state = context.read<WordsCubit>().state;

                final player = state.currentPlayerName;
                final round = state.round;
                final play = state.play;

                return Text2(
                  title: player,
                  subtitle: '$round ${strings.round} \\ $play ${strings.play}',
                );
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(12),
              child: SizedBox.expand(
                child: ColoredBox(
                  color: AppColors.everWhite,
                  child:
                      BlocSelector<WordsCubit, WordsState, Map<String, bool>>(
                    selector: (state) => state.guessedPassed,
                    builder: (context, words) => ListView.separated(
                      clipBehavior: Clip.hardEdge,
                      itemCount: words.length,
                      itemBuilder: (context, index) {
                        final word = words.keys.elementAt(index);
                        final guessed = words.values.elementAt(index);

                        return _WordListItem(
                          word: word,
                          guessed: guessed,
                          onTap: (word) =>
                              context.read<WordsCubit>().switchWordGuess(word),
                        );
                      },
                      separatorBuilder: (_, __) => const Divider(
                        height: 0,
                        color: AppColors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Builder(
          builder: (context) {
            final profit = context.select(
              (WordsCubit cubit) => cubit.state.profit,
            );
            return BottomFooter(
              withBackground: true,
              firstButtonTitle: _getProfitString(
                strings.acceptTitle,
                profit,
              ),
              firstButtonOnTap: () => _onAccept(context),
            );
          },
        ),
      ],
    );
  }

  void _onAccept(BuildContext context) {
    context.read<WordsCubit>().acceptWords();
    context.read<NavigationCubit>().resolveNavigationByGameStatus(
          status: context.read<GameRepository>().currentGame.gameStatus,
        );
  }

  String _getProfitString(String title, int profit) {
    final startString = title;
    String endString = '';
    if (profit.isNegative) {
      endString = '$profit';
    } else {
      endString = '+$profit';
    }
    return '$startString $endString';
  }
}
