import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(false) bool penaltyForSkipping,
    @Default(60) int wordsToWin,
    @Default(60) int gameTime,
  }) = _SettingsState;
}
