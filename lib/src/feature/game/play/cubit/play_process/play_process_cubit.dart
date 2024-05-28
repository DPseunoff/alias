import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/game/game_repository.dart';
import 'play_process_state.dart';

class PlayProcessCubit extends Cubit<PlayProcessState> {
  final GameRepository _gameRepository;

  PlayProcessCubit({
    required GameRepository gameRepository,
  })  : _gameRepository = gameRepository,
        super(const PlayProcessState.paused()) {
    _init(gameRepository);
  }

  void guessWord() {
    int index = state.lastShowWordIndex + 1;
    if (index == state.gameWords.length) {
      index = 0;
    }

    final guessed = state.guessed + 1;
    final updateList = Map<String, bool>.from(state.processedWords)
      ..[state.currentWord] = true;

    emit(
      state.copyWith(
        lastShowWordIndex: index,
        processedWords: updateList,
        guessed: guessed,
      ),
    );
  }

  void passWord() {
    int index = state.lastShowWordIndex + 1;
    if (index == state.gameWords.length) {
      index = 0;
    }

    final passed = state.passed + 1;
    final updateList = Map<String, bool>.from(state.processedWords)
      ..[state.currentWord] = false;

    emit(
      state.copyWith(
        lastShowWordIndex: index,
        processedWords: updateList,
        passed: passed,
      ),
    );
  }

  void startPlay() {
    emit(
      PlayProcessState.resumed(
        lastShowWordIndex: state.lastShowWordIndex,
        processedWords: state.processedWords,
        gameWords: state.gameWords,
        guessed: state.guessed,
        passed: state.passed,
      ),
    );
  }

  void pause({
    required int timeLeftSec,
  }) {
    emit(
      PlayProcessState.paused(
        lastShowWordIndex: state.lastShowWordIndex,
        gameWords: state.gameWords,
        processedWords: state.processedWords,
        guessed: state.guessed,
        passed: state.passed,
      ),
    );

    _gameRepository.setPlay(
      timeLeftSec: timeLeftSec,
      lastShownWordIndex: state.lastShowWordIndex,
      processedWords: state.processedWords,
    );
  }

  Future<void> overPlay() async {
    emit(
      PlayProcessState.over(
        lastShowWordIndex: state.lastShowWordIndex,
        processedWords: state.processedWords,
        gameWords: state.gameWords,
        guessed: state.guessed,
        passed: state.passed,
      ),
    );
    _gameRepository.setPlayOver(
      lastShownWordIndex: state.lastShowWordIndex,
      processedWords: state.processedWords,
    );
  }

  void _init(GameRepository repository) {
    final currentGame = repository.currentGame;

    final processedWords = currentGame.lastPlay.guessedPassed;
    final guessed = processedWords.values.where((element) => element).length;
    final passed = processedWords.length - guessed;

    emit(
      PlayProcessState.paused(
        processedWords: processedWords,
        lastShowWordIndex: currentGame.lastPlay.currentWordIndex,
        gameWords: currentGame.gameWords,
        guessed: guessed,
        passed: passed,
      ),
    );
  }
}
