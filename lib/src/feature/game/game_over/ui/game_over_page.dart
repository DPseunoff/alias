import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/localization/localization.dart';
import '../../../../common/theme/theme.dart';
import '../../../../common/ui/footer.dart';
import '../../../../common/ui/icons.dart';
import '../../../../common/ui/score_table.dart';
import '../../../../common/ui/text2.dart';
import '../../../../domain/game/game_repository.dart';
import '../../../navigation/navigation.dart';
import '../cubit/game_over_cubit.dart';

class GameOverPage extends AppPage {
  const GameOverPage() : super(args: const {});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => GameOverCubit(
          gameRepository: context.read<GameRepository>(),
        ),
        child: const _GameOverPageWidget(),
      );
}

class _GameOverPageWidget extends StatelessWidget {
  const _GameOverPageWidget();

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);

    return Column(
      children: [
        const Spacer(),
        AppIcons.championIcon(
          width: 70,
          height: 70,
          color: AppColors.systemLight,
        ),
        const SizedBox(height: 13),
        Builder(
          builder: (context) {
            final state = context.read<GameOverCubit>().state;
            final champion = state.champion;
            return Text2(
              title: strings.championTitle.toUpperCase(),
              subtitle: champion,
            );
          },
        ),
        const SizedBox(height: 37),
        Builder(
          builder: (context) {
            final state = context.read<GameOverCubit>().state;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: ScoreTable(
                players: state.players,
              ),
            );
          },
        ),
        const Spacer(),
        BottomFooter(
          firstButtonTitle: strings.startOverTitle,
          firstButtonOnTap: () => _onStartOver(context),
          secondButtonTitle: strings.exitTitle,
          secondButtonOnTap: () => _onExit(context),
        ),
      ],
    );
  }

  void _onStartOver(BuildContext context) {
    context.read<GameOverCubit>().startOver();
    context.read<NavigationCubit>().popUntilAndPush(
          path: AppPageName.pregame.path,
          untilPath: AppPageName.home.path,
        );
  }

  void _onExit(BuildContext context) {
    context.read<GameOverCubit>().exit();
    context.read<NavigationCubit>().popUntil(
          path: AppPageName.home.path,
        );
  }
}
