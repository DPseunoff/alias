import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/game/game_repository.dart';
import 'after_round_state.dart';

class AfterRoundCubit extends Cubit<AfterRoundState> {
  final GameRepository _gameRepository;

  AfterRoundCubit({
    required GameRepository gameRepository,
  })  : _gameRepository = gameRepository,
        super(
          AfterRoundState(
            currentPlayer: gameRepository.currentGame.players[
                gameRepository.currentGame.lastPlay.currentPlayerIndex],
            allPlayers: gameRepository.currentGame.players,
            currentRound: gameRepository.currentGame.lastPlay.round,
            currentPlay: gameRepository.currentGame.lastPlay.play,
          ),
        );

  Future<void> continuePlay() async {
    await _gameRepository.setNewRound();
  }
}
