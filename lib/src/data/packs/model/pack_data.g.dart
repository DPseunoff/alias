// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pack_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackData _$PackDataFromJson(Map<String, dynamic> json) => PackData(
      name: json['name'] as String,
      asset: json['asset'] as String,
      words: (json['words'] as List<dynamic>).map((e) => e as String).toList(),
      difficulty: $enumDecodeNullable(
              _$PackDifficultyEnumMap, json['difficulty'],
              unknownValue: PackDifficulty.easy) ??
          PackDifficulty.easy,
    );

Map<String, dynamic> _$PackDataToJson(PackData instance) => <String, dynamic>{
      'name': instance.name,
      'difficulty': _$PackDifficultyEnumMap[instance.difficulty]!,
      'asset': instance.asset,
      'words': instance.words,
    };

const _$PackDifficultyEnumMap = {
  PackDifficulty.easy: 'easy',
  PackDifficulty.medium: 'medium',
  PackDifficulty.hard: 'hard',
};
