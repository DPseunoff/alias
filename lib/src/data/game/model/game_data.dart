import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_player.dart';
import 'game_settings.dart';

part 'game_data.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class GameData {
  final GameStatus gameStatus;
  final List<String> gameWords;
  final List<GamePlayerData> players;
  final PlayData lastPlay;
  final GameSettingsData settings;
  final int? randomSeed;

  const GameData({
    this.gameStatus = GameStatus.notStarted,
    this.gameWords = const [],
    this.settings = const GameSettingsData(),
    this.players = const [],
    this.lastPlay = const PlayData(),
    this.randomSeed,
  });

  GameData copyWith({
    GameStatus? gameStatus,
    List<String>? gameWords,
    List<GamePlayerData>? players,
    PlayData? lastPlay,
    GameSettingsData? settings,
    int? randomSeed,
  }) =>
      GameData(
        gameStatus: gameStatus ?? this.gameStatus,
        gameWords: gameWords ?? this.gameWords,
        players: players ?? this.players,
        settings: settings ?? this.settings,
        lastPlay: lastPlay ?? this.lastPlay,
        randomSeed: randomSeed ?? this.randomSeed,
      );

  factory GameData.fromJson(Map<String, Object?> json) =>
      _$GameDataFromJson(json);

  Map<String, Object?> toJson() => _$GameDataToJson(this);
}

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class PlayData {
  final int currentPlayerIndex;
  final int currentWordIndex;
  final int timeLeftSec;
  final Map<String, bool> guessedPassed;
  final int round;
  final int play;

  const PlayData({
    this.currentPlayerIndex = 0,
    this.currentWordIndex = 0,
    this.timeLeftSec = 0,
    this.guessedPassed = const {},
    this.round = 1,
    this.play = 1,
  });

  PlayData copyWith({
    int? currentPlayerIndex,
    int? currentWordIndex,
    int? timeLeftSec,
    Map<String, bool>? guessedPassed,
    int? round,
    int? play,
  }) =>
      PlayData(
        currentPlayerIndex: currentPlayerIndex ?? this.currentPlayerIndex,
        currentWordIndex: currentWordIndex ?? this.currentWordIndex,
        timeLeftSec: timeLeftSec ?? this.timeLeftSec,
        guessedPassed: guessedPassed ?? this.guessedPassed,
        round: round ?? this.round,
        play: play ?? this.play,
      );

  factory PlayData.fromJson(Map<String, Object?> json) =>
      _$PlayDataFromJson(json);

  Map<String, Object?> toJson() => _$PlayDataToJson(this);
}

enum GameStatus {
  notStarted,
  teams,
  settings,
  pregame,
  betweenRounds,
  play,
  words,
  afterPlay,
  gameOver,
}
