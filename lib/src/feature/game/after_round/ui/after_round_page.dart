import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/localization/localization.dart';
import '../../../../common/ui/footer.dart';
import '../../../../common/ui/score_table.dart';
import '../../../../common/ui/text2.dart';
import '../../../../domain/game/game_repository.dart';
import '../../../navigation/navigation.dart';
import '../cubit/after_round_cubit.dart';

class AfterPlayPage extends AppPage {
  const AfterPlayPage() : super(args: const {});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => AfterRoundCubit(
          gameRepository: context.read<GameRepository>(),
        ),
        child: const _AfterRoundPageWidget(),
      );
}

class _AfterRoundPageWidget extends StatelessWidget {
  const _AfterRoundPageWidget();

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);

    return Column(
      children: [
        const Spacer(),
        Builder(
          builder: (context) {
            final state = context.read<AfterRoundCubit>().state;

            final player = state.currentPlayer.name;
            final round = state.currentRound;
            final play = state.currentPlay;

            return Text2(
              title: player,
              subtitle: '$round ${strings.round} \\ $play ${strings.play}',
            );
          },
        ),
        const SizedBox(height: 37),
        Builder(
          builder: (context) {
            final state = context.read<AfterRoundCubit>().state;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: ScoreTable(
                players: state.allPlayers,
              ),
            );
          },
        ),
        const Spacer(),
        BottomFooter(
          firstButtonTitle: strings.continueTitle,
          firstButtonOnTap: () {
            context.read<AfterRoundCubit>().continuePlay();
            context.read<NavigationCubit>().popUntilAndPush(
                  path: AppPageName.pregame.path,
                  untilPath: AppPageName.home.path,
                );
          },
        ),
      ],
    );
  }
}
