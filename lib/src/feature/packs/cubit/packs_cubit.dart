import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/packs/model/pack_data.dart';
import '../../../domain/game/game_repository.dart';
import '../../../domain/pack/packs_repository.dart';
import 'packs_state.dart';

class PacksCubit extends Cubit<PacksState> {
  final PacksRepository _packsRepository;
  final GameRepository _gameRepository;

  StreamSubscription? _sub;

  PacksCubit({
    required PacksRepository packsRepository,
    required GameRepository gameRepository,
  })  : _packsRepository = packsRepository,
        _gameRepository = gameRepository,
        super(const PacksState.loading());

  void init() {
    _sub ??= _packsRepository.packs.distinct().listen(
      (packs) {
        if (packs.isNotEmpty) {
          emit(PacksState.success(packs: packs));
        }
      },
    );
  }

  void selectPack({required PackData selectedPack}) {
    _gameRepository.initializeNewGame(pack: selectedPack);
  }

  @override
  Future<void> close() async {
    await _sub?.cancel();
    _sub = null;
    return super.close();
  }
}
