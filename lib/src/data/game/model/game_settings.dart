import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_settings.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class GameSettingsData {
  final bool penaltyForSkipping;
  final int wordsToWin;
  final int gameTimeSeconds;

  const GameSettingsData({
    this.penaltyForSkipping = false,
    this.wordsToWin = 60,
    this.gameTimeSeconds = 60,
  });

  factory GameSettingsData.fromJson(Map<String, Object?> json) =>
      _$GameSettingsDataFromJson(json);

  Map<String, Object?> toJson() => _$GameSettingsDataToJson(this);
}
