import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_process_state.freezed.dart';

@freezed
abstract class PlayProcessState with _$PlayProcessState {
  const factory PlayProcessState.resumed({
    @Default([]) List<String> gameWords,
    @Default({}) Map<String, bool> processedWords,
    @Default(0) int lastShowWordIndex,
    @Default(0) int guessed,
    @Default(0) int passed,
  }) = _PlayProcessStateResumed;

  const factory PlayProcessState.paused({
    @Default([]) List<String> gameWords,
    @Default({}) Map<String, bool> processedWords,
    @Default(0) int lastShowWordIndex,
    @Default(0) int guessed,
    @Default(0) int passed,
  }) = _PlayProcessStatePaused;

  const factory PlayProcessState.over({
    @Default([]) List<String> gameWords,
    @Default({}) Map<String, bool> processedWords,
    @Default(0) int lastShowWordIndex,
    @Default(0) int guessed,
    @Default(0) int passed,
  }) = _PlayProcessStateOver;

  const PlayProcessState._();

  String get currentWord => gameWords[lastShowWordIndex];

  bool get isOver => maybeMap(
        over: (_) => true,
        orElse: () => false,
      );

  bool get isPaused => maybeMap(
        paused: (_) => true,
        orElse: () => false,
      );
}
