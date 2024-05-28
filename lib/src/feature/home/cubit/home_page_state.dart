import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/game/model/game_data.dart';

part 'home_page_state.freezed.dart';

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(GameStatus.notStarted) gameStatus,
  }) = _HomePageState;

  const HomePageState._();

  bool get canContinue => gameStatus != GameStatus.notStarted;
}
