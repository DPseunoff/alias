import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_player.g.dart';

enum Player { tigers, chickens, foxes, dogs, frogs, wolfs }

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class GamePlayerData {
  final String emoji;
  final String name;
  final Player player;
  final int score;

  const GamePlayerData({
    required this.emoji,
    required this.name,
    required this.player,
    this.score = 0,
  });

  GamePlayerData copyWith({
    String? emoji,
    String? name,
    Player? player,
    int? score,
  }) =>
      GamePlayerData(
        emoji: emoji ?? this.emoji,
        name: name ?? this.name,
        player: player ?? this.player,
        score: score ?? this.score,
      );

  factory GamePlayerData.fromJson(Map<String, Object?> json) =>
      _$GamePlayerDataFromJson(json);

  Map<String, Object?> toJson() => _$GamePlayerDataToJson(this);
}

extension RandomTeam on Player {
  static List<Player> get random {
    final list = List<Player>.from(Player.values)..shuffle();
    return list.toList();
  }
}
