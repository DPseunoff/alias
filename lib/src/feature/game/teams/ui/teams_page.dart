import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../../common/localization/localization.dart';
import '../../../../common/theme/theme.dart';
import '../../../../common/ui/appbar.dart';
import '../../../../common/ui/button/icon_button.dart';
import '../../../../common/ui/footer.dart';
import '../../../../common/ui/icons.dart';
import '../../../../data/game/model/game_player.dart';
import '../../../../domain/game/game_repository.dart';
import '../../../navigation/navigation.dart';
import '../cubit/teams_cubit.dart';
import '../cubit/teams_state.dart';

part 'components/team_card.dart';

class TeamsPage extends AppPage {
  const TeamsPage() : super(args: const {});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => TeamsCubit(
          gameRepository: context.read<GameRepository>(),
        ),
        child: const _TeamsWidget(),
      );
}

class _TeamsWidget extends StatefulWidget {
  const _TeamsWidget();

  @override
  State<_TeamsWidget> createState() => _TeamsWidgetState();
}

class _TeamsWidgetState extends State<_TeamsWidget> {
  final _listKey = GlobalKey<AnimatedListState>();

  final _teamList = RandomTeam.random;

  final _animationTween = Tween(
    begin: const Offset(1, 0),
    end: Offset.zero,
  ).chain(CurveTween(curve: Curves.fastOutSlowIn));

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final currentPlayers = context.read<TeamsCubit>().state.players;
        for (final player in currentPlayers) {
          _teamList.removeWhere((team) => player.player == team);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);

    return Column(
      children: [
        AliasAppBar(
          centerTitle: strings.teamsTitle,
          onBackTap: () {
            context.read<NavigationCubit>().pop();
          },
        ),
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Align(
                child: BlocBuilder<TeamsCubit, TeamsState>(
                  buildWhen: (prev, curr) => prev.players != curr.players,
                  builder: (context, state) => AnimatedList(
                    key: _listKey,
                    initialItemCount: state.players.length,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(top: 14, bottom: 200),
                    itemBuilder: (context, index, animation) {
                      final playerData = state.players.elementAt(index);

                      final name = playerData.name;
                      final emoji = playerData.emoji;

                      return _TeamCard(
                        key: ValueKey(name),
                        name: name,
                        emoji: emoji,
                        animation: animation.drive(_animationTween),
                        onTap: () => _removePlayer(
                          context: context,
                          state: state,
                          name: name,
                          emoji: emoji,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: BlocBuilder<TeamsCubit, TeamsState>(
                  buildWhen: (prev, curr) => prev.players != curr.players,
                  builder: (context, state) => BottomFooter(
                    withBackground: true,
                    firstButtonTitle: strings.addTeamTitle,
                    firstButtonOnTap: () => _addPlayer(
                      context: context,
                      state: state,
                    ),
                    firstButtonDisabled: _teamList.isEmpty,
                    secondButtonTitle: strings.continueTitle,
                    secondButtonOnTap: () {
                      context.read<TeamsCubit>().saveTeams();
                      context.read<NavigationCubit>().push(
                            path: AppPageName.settings.path,
                          );
                    },
                    secondButtonDisabled: state.players.length < 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _addPlayer({
    required BuildContext context,
    required TeamsState state,
  }) {
    final nextPlayer = _teamList.removeAt(0);
    final playerName = _mapTeamName(context, nextPlayer);
    final playerEmoji = _mapTeamEmoji(nextPlayer);

    context.read<TeamsCubit>().addNewTeam(
          emoji: playerEmoji,
          name: playerName,
          player: nextPlayer,
        );

    final index = state.players.length;
    _listKey.currentState?.insertItem(
      index,
      duration: const Duration(milliseconds: 200),
    );
  }

  void _removePlayer({
    required BuildContext context,
    required TeamsState state,
    required String name,
    required String emoji,
  }) {
    final index = state.players.indexWhere((player) => player.name == name);
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => _TeamCard(
        name: name,
        emoji: emoji,
        animation: animation.drive(_animationTween),
      ),
      duration: const Duration(milliseconds: 200),
    );

    final player = context.read<TeamsCubit>().deleteTeam(name: name);
    _teamList.add(player);
  }

  String _mapTeamName(BuildContext context, Player team) {
    final strings = AppLocalizations.of(context);

    switch (team) {
      case Player.tigers:
        return strings.teamTigers;
      case Player.chickens:
        return strings.teamChickens;
      case Player.foxes:
        return strings.teamFoxes;
      case Player.dogs:
        return strings.teamDogs;
      case Player.frogs:
        return strings.teamFrogs;
      case Player.wolfs:
        return strings.teamWolfs;
    }
  }

  String _mapTeamEmoji(Player team) {
    switch (team) {
      case Player.tigers:
        return '🐯';
      case Player.chickens:
        return '🐔';
      case Player.foxes:
        return '🦊';
      case Player.dogs:
        return '🐶';
      case Player.frogs:
        return '🐸';
      case Player.wolfs:
        return '🐺';
    }
  }
}
