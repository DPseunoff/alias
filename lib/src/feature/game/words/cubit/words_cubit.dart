import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/game/game_repository.dart';
import 'words_state.dart';

class WordsCubit extends Cubit<WordsState> {
  final GameRepository _gameRepository;

  WordsCubit({
    required GameRepository gameRepository,
  })  : _gameRepository = gameRepository,
        super(const WordsState()) {
    _init(gameRepository);
  }

  void switchWordGuess(String word) {
    final withPenalty = _gameRepository.currentGame.settings.penaltyForSkipping;

    final updatedMap = Map<String, bool>.from(state.guessedPassed)
      ..update(
        word,
        (value) => !value,
      );

    final kGuessed = updatedMap.values.where((element) => element).length;
    final kPassed = updatedMap.length - kGuessed;

    final profit = withPenalty ? kGuessed - kPassed : kGuessed;

    emit(
      state.copyWith(
        guessedPassed: updatedMap,
        profit: profit,
      ),
    );
  }

  Future<void> acceptWords() async {
    await _gameRepository.setPlayerWords(
      profit: state.profit,
    );
  }

  void _init(GameRepository gameRepository) {
    final currentPlayerIndex =
        gameRepository.currentGame.lastPlay.currentPlayerIndex;
    final currentPlayerName =
        gameRepository.currentGame.players[currentPlayerIndex].name;
    final guessedPassed = gameRepository.currentGame.lastPlay.guessedPassed;

    final withPenalty = _gameRepository.currentGame.settings.penaltyForSkipping;

    final kGuessed = guessedPassed.values.where((element) => element).length;
    final kPassed = guessedPassed.length - kGuessed;

    final profit = withPenalty ? kGuessed - kPassed : kGuessed;

    emit(
      WordsState(
        currentPlayerName: currentPlayerName,
        round: gameRepository.currentGame.lastPlay.round,
        play: gameRepository.currentGame.lastPlay.play,
        guessedPassed: guessedPassed,
        profit: profit,
      ),
    );
  }
}
