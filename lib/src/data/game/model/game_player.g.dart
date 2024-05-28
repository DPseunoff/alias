// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GamePlayerData _$GamePlayerDataFromJson(Map<String, dynamic> json) =>
    GamePlayerData(
      emoji: json['emoji'] as String,
      name: json['name'] as String,
      player: $enumDecode(_$PlayerEnumMap, json['player']),
      score: json['score'] as int? ?? 0,
    );

Map<String, dynamic> _$GamePlayerDataToJson(GamePlayerData instance) =>
    <String, dynamic>{
      'emoji': instance.emoji,
      'name': instance.name,
      'player': _$PlayerEnumMap[instance.player]!,
      'score': instance.score,
    };

const _$PlayerEnumMap = {
  Player.tigers: 'tigers',
  Player.chickens: 'chickens',
  Player.foxes: 'foxes',
  Player.dogs: 'dogs',
  Player.frogs: 'frogs',
  Player.wolfs: 'wolfs',
};
