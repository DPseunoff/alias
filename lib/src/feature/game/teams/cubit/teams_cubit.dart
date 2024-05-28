import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/game/model/game_player.dart';
import '../../../../domain/game/game_repository.dart';
import 'teams_state.dart';

class TeamsCubit extends Cubit<TeamsState> {
  final GameRepository _gameRepository;

  TeamsCubit({
    required GameRepository gameRepository,
  })  : _gameRepository = gameRepository,
        super(const TeamsState()) {
    _init(gameRepository);
  }

  void addNewTeam({
    required String emoji,
    required String name,
    required Player player,
  }) {
    final list = List<GamePlayerData>.from(state.players)
      ..add(
        GamePlayerData(
          emoji: emoji,
          name: name,
          player: player,
        ),
      );

    emit(
      state.copyWith(players: list),
    );
  }

  Player deleteTeam({required String name}) {
    final playerIndex = state.players.indexWhere(
      (player) => player.name == name,
    );
    final player = state.players[playerIndex];

    final list = List<GamePlayerData>.from(state.players)
      ..removeAt(playerIndex);

    emit(
      state.copyWith(players: list),
    );

    return player.player;
  }

  Future<void> saveTeams() async {
    await _gameRepository.setTeams(
      players: state.players.toList(growable: false),
    );
  }

  void _init(GameRepository gameRepository) {
    emit(
      TeamsState(
        players: gameRepository.currentGame.players,
      ),
    );
  }
}
