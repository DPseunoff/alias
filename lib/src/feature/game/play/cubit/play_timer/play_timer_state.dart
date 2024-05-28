import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_timer_state.freezed.dart';

@freezed
abstract class PlayTimerState with _$PlayTimerState {
  const factory PlayTimerState.initial({
    required int duration,
  }) = PlayTimerStateInitial;

  const factory PlayTimerState.pause({
    required int duration,
  }) = PlayTimerStatePause;

  const factory PlayTimerState.progress({
    required int duration,
  }) = PlayTimerStateProgress;

  const factory PlayTimerState.complete({
    @Default(0) int duration,
  }) = PlayTimerStateComplete;

  const PlayTimerState._();

  bool get isPaused => maybeMap(
        pause: (_) => true,
        initial: (_) => true,
        orElse: () => false,
      );
}
