// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameData _$GameDataFromJson(Map<String, dynamic> json) => GameData(
      gameStatus:
          $enumDecodeNullable(_$GameStatusEnumMap, json['gameStatus']) ??
              GameStatus.notStarted,
      gameWords: (json['gameWords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      settings: json['settings'] == null
          ? const GameSettingsData()
          : GameSettingsData.fromJson(json['settings'] as Map<String, dynamic>),
      players: (json['players'] as List<dynamic>?)
              ?.map((e) => GamePlayerData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lastPlay: json['lastPlay'] == null
          ? const PlayData()
          : PlayData.fromJson(json['lastPlay'] as Map<String, dynamic>),
      randomSeed: json['randomSeed'] as int?,
    );

Map<String, dynamic> _$GameDataToJson(GameData instance) => <String, dynamic>{
      'gameStatus': _$GameStatusEnumMap[instance.gameStatus]!,
      'gameWords': instance.gameWords,
      'players': instance.players.map((e) => e.toJson()).toList(),
      'lastPlay': instance.lastPlay.toJson(),
      'settings': instance.settings.toJson(),
      'randomSeed': instance.randomSeed,
    };

const _$GameStatusEnumMap = {
  GameStatus.notStarted: 'notStarted',
  GameStatus.teams: 'teams',
  GameStatus.settings: 'settings',
  GameStatus.pregame: 'pregame',
  GameStatus.betweenRounds: 'betweenRounds',
  GameStatus.play: 'play',
  GameStatus.words: 'words',
  GameStatus.afterPlay: 'afterPlay',
  GameStatus.gameOver: 'gameOver',
};

PlayData _$PlayDataFromJson(Map<String, dynamic> json) => PlayData(
      currentPlayerIndex: json['currentPlayerIndex'] as int? ?? 0,
      currentWordIndex: json['currentWordIndex'] as int? ?? 0,
      timeLeftSec: json['timeLeftSec'] as int? ?? 0,
      guessedPassed: (json['guessedPassed'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool),
          ) ??
          const {},
      round: json['round'] as int? ?? 1,
      play: json['play'] as int? ?? 1,
    );

Map<String, dynamic> _$PlayDataToJson(PlayData instance) => <String, dynamic>{
      'currentPlayerIndex': instance.currentPlayerIndex,
      'currentWordIndex': instance.currentWordIndex,
      'timeLeftSec': instance.timeLeftSec,
      'guessedPassed': instance.guessedPassed,
      'round': instance.round,
      'play': instance.play,
    };
