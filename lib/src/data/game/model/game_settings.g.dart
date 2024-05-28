// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameSettingsData _$GameSettingsDataFromJson(Map<String, dynamic> json) =>
    GameSettingsData(
      penaltyForSkipping: json['penaltyForSkipping'] as bool? ?? false,
      wordsToWin: json['wordsToWin'] as int? ?? 60,
      gameTimeSeconds: json['gameTimeSeconds'] as int? ?? 60,
    );

Map<String, dynamic> _$GameSettingsDataToJson(GameSettingsData instance) =>
    <String, dynamic>{
      'penaltyForSkipping': instance.penaltyForSkipping,
      'wordsToWin': instance.wordsToWin,
      'gameTimeSeconds': instance.gameTimeSeconds,
    };
