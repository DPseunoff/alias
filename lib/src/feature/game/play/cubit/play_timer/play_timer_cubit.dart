import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/game/game_repository.dart';
import 'play_timer_state.dart';
import 'play_timer_ticker.dart';

class PlayTimerCubit extends Cubit<PlayTimerState> {
  final Ticker _ticker;

  StreamSubscription<int>? _tickerSubscription;

  PlayTimerCubit({
    required Ticker ticker,
    required GameRepository gameRepository,
  })  : _ticker = ticker,
        super(
          PlayTimerState.initial(
            duration: gameRepository.currentGame.lastPlay.timeLeftSec,
          ),
        );

  void start() {
    if (state is! PlayTimerStateInitial) {
      return _resume();
    }
    emit(PlayTimerStateProgress(duration: state.duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(ticks: state.duration).listen(_onTick);
  }

  int pause() {
    if (state is PlayTimerStateProgress) {
      _tickerSubscription?.pause();
      emit(PlayTimerStatePause(duration: state.duration));
    }
    return state.duration;
  }

  void _resume() {
    if (state is PlayTimerStatePause) {
      _tickerSubscription?.resume();
      emit(PlayTimerStateProgress(duration: state.duration));
    }
  }

  void _onTick(int duration) {
    emit(
      duration > 0
          ? PlayTimerStateProgress(duration: duration)
          : const PlayTimerStateComplete(),
    );
  }

  @override
  Future<void> close() async {
    await _tickerSubscription?.cancel();
    _tickerSubscription = null;
    return super.close();
  }
}
