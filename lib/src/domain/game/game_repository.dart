import 'dart:math';

import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';

import '../../data/game/api/interface.dart';
import '../../data/game/model/game_data.dart';
import '../../data/game/model/game_player.dart';
import '../../data/game/model/game_settings.dart';
import '../../data/packs/model/pack_data.dart';

class GameRepository {
  final GameApi _gameApi;

  late final _random = Random();
  late final _log = Logger();
  late BehaviorSubject<GameData> _gameData;

  GameRepository({
    required GameApi gameApi,
  }) : _gameApi = gameApi {
    _gameData = BehaviorSubject()
      ..add(
        _gameApi.lastSavedGameData ?? const GameData(),
      );
  }

  GameData get currentGame => _gameData.value;

  Stream<GameData> get currentGameStream => _gameData.stream;

  Random get gameRandom => _random;

  Future<void> initializeNewGame({required PackData pack}) async {
    final wordsForGame = pack.words..shuffle(_random);
    await _saveGame(
      game: GameData(
        gameWords: wordsForGame,
        gameStatus: GameStatus.teams,
      ),
    );
    _log.d('GameRepository: initialized new game');
  }

  Future<void> setTeams({required List<GamePlayerData> players}) async {
    await _saveGame(
      game: currentGame.copyWith(
        players: players,
        gameStatus: GameStatus.settings,
      ),
    );
    _log.d('GameRepository: set teams');
  }

  Future<void> setGameSettings({
    required bool penaltyForSkipping,
    required int wordsToWin,
    required int gameTimeSec,
  }) async {
    final settings = GameSettingsData(
      penaltyForSkipping: penaltyForSkipping,
      wordsToWin: wordsToWin,
      gameTimeSeconds: gameTimeSec,
    );
    await _saveGame(
      game: currentGame.copyWith(
        settings: settings,
        gameStatus: GameStatus.pregame,
      ),
    );
    _log.d('GameRepository: set settings');
  }

  Future<void> setPlay({
    int? lastShownWordIndex,
    int? timeLeftSec,
    Map<String, bool>? processedWords,
  }) async {
    await _saveGame(
      game: currentGame.copyWith(
        lastPlay: currentGame.lastPlay.copyWith(
          currentWordIndex:
              lastShownWordIndex ?? currentGame.lastPlay.currentWordIndex,
          timeLeftSec: timeLeftSec ?? currentGame.settings.gameTimeSeconds,
          guessedPassed: processedWords,
        ),
        gameStatus: GameStatus.play,
      ),
    );
    _log.d('GameRepository: set play data');
  }

  Future<void> setPlayOver({
    required int lastShownWordIndex,
    required Map<String, bool> processedWords,
  }) async {
    await _saveGame(
      game: currentGame.copyWith(
        lastPlay: currentGame.lastPlay.copyWith(
          currentWordIndex: lastShownWordIndex,
          timeLeftSec: 0,
          guessedPassed: processedWords,
        ),
        gameStatus: GameStatus.words,
      ),
    );
    _log.d('GameRepository: set play over');
  }

  Future<void> setPlayerWords({
    required int profit,
  }) async {
    final currentPlayerIndex = currentGame.lastPlay.currentPlayerIndex;
    final currentPlayerScore = currentGame.players[currentPlayerIndex].score;

    final updatedPlayer = currentGame.players[currentPlayerIndex].copyWith(
      score: currentPlayerScore + profit,
    );

    final updatedPlayers = List<GamePlayerData>.from(
      currentGame.players,
      growable: false,
    )..[currentPlayerIndex] = updatedPlayer;

    final wordsToWin = currentGame.settings.wordsToWin;

    final playerCondition =
        updatedPlayers.any((player) => player.score >= wordsToWin);
    final playCondition = currentGame.lastPlay.play == updatedPlayers.length;

    if (playerCondition && playCondition) {
      await setGameOver(
        updatedPlayerList: updatedPlayers,
      );
      return;
    }

    await _saveGame(
      game: currentGame.copyWith(
        players: updatedPlayers,
        gameStatus: GameStatus.afterPlay,
      ),
    );
    _log.d('GameRepository: set player words');
  }

  Future<void> setNewRound() async {
    final lastPlay = currentGame.lastPlay;

    int round = lastPlay.round;
    int play = lastPlay.play + 1;
    if (play > currentGame.players.length) {
      round += 1;
      play = 1;
    }

    int currentPlayerIndex = lastPlay.currentPlayerIndex + 1;
    if (currentPlayerIndex == currentGame.players.length) {
      currentPlayerIndex = 0;
    }

    int currentLastWordIndex = lastPlay.currentWordIndex + 1;
    if (currentLastWordIndex == currentGame.gameWords.length) {
      currentLastWordIndex = 0;
    }

    final newPlay = PlayData(
      round: round,
      play: play,
      currentPlayerIndex: currentPlayerIndex,
      currentWordIndex: currentLastWordIndex,
      timeLeftSec: currentGame.settings.gameTimeSeconds,
      guessedPassed: const {},
    );

    await _saveGame(
      game: currentGame.copyWith(
        lastPlay: newPlay,
        gameStatus: GameStatus.betweenRounds,
      ),
    );
    _log.d('GameRepository: set new round');
  }

  Future<void> setStartOver() async {
    final shuffledWords = List<String>.from(
      currentGame.gameWords,
      growable: false,
    )..shuffle(_random);
    final playersWithZeroScore = currentGame.players
        .map(
          (player) => player.copyWith(score: 0),
        )
        .toList(growable: false);

    await _saveGame(
      game: currentGame.copyWith(
        players: playersWithZeroScore,
        gameWords: shuffledWords,
        lastPlay: const PlayData(),
        gameStatus: GameStatus.pregame,
      ),
    );

    _log.d('GameRepository: set start over');
  }

  Future<void> setGameOver({
    required List<GamePlayerData> updatedPlayerList,
  }) async {
    await _saveGame(
      game: currentGame.copyWith(
        players: updatedPlayerList,
        gameStatus: GameStatus.gameOver,
      ),
    );
    _log.d('GameRepository: set game over');
  }

  Future<void> clearGame() async {
    await _gameApi.clearGame();
    _gameData.value = const GameData();
    _log.d('GameRepository: cleared last game');
  }

  Future<void> _saveGame({required GameData game}) async {
    _gameData.value = game;
    await _gameApi.saveGame(game: game);
  }

  Future<void> dispose() async {
    await _gameData.close();
  }
}
