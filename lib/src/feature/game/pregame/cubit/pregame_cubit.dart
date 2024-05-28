import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/game/game_repository.dart';
import 'pregame_state.dart';

class PregameCubit extends Cubit<PregameState> {
  final GameRepository _gameRepository;

  PregameCubit({
    required GameRepository gameRepository,
  })  : _gameRepository = gameRepository,
        super(
          PregameState(
            currentPlayer: gameRepository.currentGame.players[
                gameRepository.currentGame.lastPlay.currentPlayerIndex],
            allPlayers: gameRepository.currentGame.players,
          ),
        );

  Future<void> startPlay() async {
    await _gameRepository.setPlay();
  }
}
