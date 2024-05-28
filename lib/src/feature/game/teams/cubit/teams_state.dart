import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/game/model/game_player.dart';

part 'teams_state.freezed.dart';

@freezed
abstract class TeamsState with _$TeamsState {
  const factory TeamsState({
    @Default([]) List<GamePlayerData> players,
  }) = _TeamsState;
}
