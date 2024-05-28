import 'package:freezed_annotation/freezed_annotation.dart';

part 'words_state.freezed.dart';

@freezed
abstract class WordsState with _$WordsState {
  const factory WordsState({
    @Default('') String currentPlayerName,
    @Default(0) int round,
    @Default(0) int play,
    @Default({}) Map<String, bool> guessedPassed,
    @Default(0) int profit,
  }) = _WordsState;
}
