import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/game/model/game_player.dart';

part 'game_over_state.freezed.dart';

@freezed
abstract class GameOverState with _$GameOverState {
  const factory GameOverState({
    @Default('') String champion,
    @Default([]) List<GamePlayerData> players,
  }) = _GameOverState;
}
