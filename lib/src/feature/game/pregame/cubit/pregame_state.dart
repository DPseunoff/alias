import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/game/model/game_player.dart';

part 'pregame_state.freezed.dart';

@freezed
abstract class PregameState with _$PregameState {
  const factory PregameState({
    required GamePlayerData currentPlayer,
    required List<GamePlayerData> allPlayers,
  }) = _PregameState;
}
