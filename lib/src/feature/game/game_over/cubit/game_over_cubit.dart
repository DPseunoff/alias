import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/game/game_repository.dart';
import 'game_over_state.dart';

class GameOverCubit extends Cubit<GameOverState> {
  final GameRepository _gameRepository;

  GameOverCubit({
    required GameRepository gameRepository,
  })  : _gameRepository = gameRepository,
        super(const GameOverState()) {
    _init(gameRepository);
  }

  Future<void> startOver() async {
    await _gameRepository.setStartOver();
  }

  Future<void> exit() async {
    await _gameRepository.clearGame();
  }

  void _init(GameRepository gameRepository) {
    final championPlayer = gameRepository.currentGame.players.reduce(
      (curr, next) => curr.score > next.score ? curr : next,
    );

    emit(
      GameOverState(
        champion: championPlayer.name,
        players: gameRepository.currentGame.players,
      ),
    );
  }
}
