import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../../common/localization/localization.dart';
import '../../../../common/theme/theme.dart';
import '../../../../common/ui/appbar.dart';
import '../../../../common/ui/footer.dart';
import '../../../../data/game/model/game_player.dart';
import '../../../../domain/game/game_repository.dart';
import '../../../navigation/navigation.dart';
import '../cubit/pregame_cubit.dart';

class PregamePage extends AppPage {
  const PregamePage() : super(args: const {});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => PregameCubit(
          gameRepository: context.read<GameRepository>(),
        ),
        child: const _PregamePageWidget(),
      );
}

class _PregamePageWidget extends StatefulWidget {
  const _PregamePageWidget();

  @override
  State<_PregamePageWidget> createState() => _PregamePageWidgetState();
}

class _PregamePageWidgetState extends State<_PregamePageWidget> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final strings = AppLocalizations.of(context);

    return Column(
      children: [
        Builder(
          builder: (context) {
            final currentPlayer =
                context.read<PregameCubit>().state.currentPlayer;

            return Container(
              decoration: BoxDecoration(
                color: AppColors.everWhite,
                boxShadow: [AppShadows.headerLight],
                borderRadius: const BorderRadiusDirectional.vertical(
                  bottom: Radius.circular(24),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: AliasAppBar(
                      onBackTap: () => context.read<NavigationCubit>().pop(),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 35),
                        Container(
                          width: 108,
                          height: 108,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.systemLight,
                          ),
                          child: Center(
                            child: Text(
                              currentPlayer.emoji,
                              style: GoogleFonts.lato(fontSize: 48),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          currentPlayer.name,
                          style: textTheme.titleMedium,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          strings.prepareTitle,
                          style: textTheme.bodyMedium?.copyWith(
                            color: AppColors.minorLight,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Align(
                child: Builder(
                  builder: (context) {
                    final allPlayers =
                        context.read<PregameCubit>().state.allPlayers;

                    final players = List<GamePlayerData>.from(allPlayers)
                      ..sort(
                        (a, b) => b.score.compareTo(a.score),
                      );

                    return ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 118,
                      ),
                      itemCount: players.length,
                      itemBuilder: (context, index) {
                        final player = players[index];
                        return _PlayerCard(
                          name: player.name,
                          emoji: player.emoji,
                          score: player.score,
                        );
                      },
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: BottomFooter(
                  withBackground: true,
                  firstButtonTitle: strings.letsGoTitle,
                  firstButtonOnTap: () {
                    context.read<PregameCubit>().startPlay();
                    context.read<NavigationCubit>().popUntilAndPush(
                          path: AppPageName.play.path,
                          untilPath: AppPageName.home.path,
                        );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlayerCard extends StatelessWidget {
  final String name;
  final String emoji;
  final int score;

  const _PlayerCard({
    required this.name,
    required this.emoji,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: 74,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.all(16).copyWith(right: 26),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.everWhite,
        boxShadow: [AppShadows.mainLight],
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: AppColors.backgroundLight,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                emoji,
                style: GoogleFonts.lato(fontSize: 32),
              ),
            ),
          ),
          const SizedBox(width: 7),
          Text(name, style: textTheme.titleMedium),
          const Spacer(),
          Text(score.toString(), style: textTheme.titleMedium),
        ],
      ),
    );
  }
}
