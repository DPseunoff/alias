import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/game/model/game_player.dart';

part 'after_round_state.freezed.dart';

@freezed
abstract class AfterRoundState with _$AfterRoundState {
  const factory AfterRoundState({
    required GamePlayerData currentPlayer,
    required List<GamePlayerData> allPlayers,
    required int currentRound,
    required int currentPlay,
  }) = _AfterRoundState;
}
