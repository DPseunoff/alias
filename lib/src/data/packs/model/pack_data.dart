import 'package:freezed_annotation/freezed_annotation.dart';

part 'pack_data.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class PackData {
  @JsonKey(name: 'name')
  final String name;

  @JsonKey(
    name: 'difficulty',
    defaultValue: PackDifficulty.easy,
    unknownEnumValue: PackDifficulty.easy,
  )
  final PackDifficulty difficulty;

  @JsonKey(name: 'asset')
  final String asset;

  @JsonKey(name: 'words')
  final List<String> words;

  const PackData({
    required this.name,
    required this.asset,
    required this.words,
    this.difficulty = PackDifficulty.easy,
  });

  factory PackData.fromJson(Map<String, Object?> json) =>
      _$PackDataFromJson(json);

  Map<String, Object?> toJson() => _$PackDataToJson(this);
}

enum PackDifficulty {
  @JsonValue('easy')
  easy,
  @JsonValue('medium')
  medium,
  @JsonValue('hard')
  hard,
}
