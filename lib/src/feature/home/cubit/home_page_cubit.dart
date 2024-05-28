import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/game/model/game_data.dart';
import '../../../domain/game/game_repository.dart';
import 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  final GameRepository _gameRepository;

  StreamSubscription? _sub;

  HomePageCubit({
    required GameRepository gameRepository,
  })  : _gameRepository = gameRepository,
        super(const HomePageState());

  void init() {
    _sub ??= _gameRepository.currentGameStream
        .map((event) => event.gameStatus)
        .listen(_onEvent);
  }

  @override
  Future<void> close() async {
    await _sub?.cancel();
    _sub = null;
    return super.close();
  }

  void _onEvent(GameStatus status) => emit(
        HomePageState(
          gameStatus: status,
        ),
      );
}
