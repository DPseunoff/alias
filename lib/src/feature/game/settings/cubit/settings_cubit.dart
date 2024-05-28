import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/game/game_repository.dart';
import 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final GameRepository _gameRepository;

  SettingsCubit({
    required GameRepository gameRepository,
  })  : _gameRepository = gameRepository,
        super(const SettingsState()) {
    _init(gameRepository);
  }

  void switchPenalty() {
    emit(
      state.copyWith(
        penaltyForSkipping: !state.penaltyForSkipping,
      ),
    );
  }

  void setWordsToWin(int wordsToWin) {
    emit(
      state.copyWith(
        wordsToWin: wordsToWin,
      ),
    );
  }

  void setGameTime(int gameTime) {
    emit(
      state.copyWith(
        gameTime: gameTime,
      ),
    );
  }

  Future<void> saveSettings() async {
    await _gameRepository.setGameSettings(
      penaltyForSkipping: state.penaltyForSkipping,
      wordsToWin: state.wordsToWin,
      gameTimeSec: state.gameTime,
    );
  }

  void _init(GameRepository gameRepository) {
    final repositorySettings = gameRepository.currentGame.settings;
    emit(
      SettingsState(
        penaltyForSkipping: repositorySettings.penaltyForSkipping,
        wordsToWin: repositorySettings.wordsToWin,
        gameTime: repositorySettings.gameTimeSeconds,
      ),
    );
  }
}
