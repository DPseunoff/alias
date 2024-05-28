import 'package:flutter/material.dart';

import '../../data/game/model/game_player.dart';
import '../theme/theme.dart';

class ScoreTable extends StatelessWidget {
  final List<GamePlayerData> players;

  const ScoreTable({
    required this.players,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final rows = <Widget>[];
    final rowsCount = (players.length / 2).ceil();

    for (int i = 0; i < rowsCount; i++) {
      final firstCell = _ScoreTableElement(
        playerData: players[i * 2],
      );

      Widget? secondCell;
      if (i * 2 + 1 != players.length) {
        secondCell = _ScoreTableElement(
          playerData: players[i * 2 + 1],
        );
      }

      rows.add(
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            firstCell,
            if (secondCell != null) ...[
              const SizedBox(
                width: 1,
                height: 59,
                child: ColoredBox(
                  color: AppColors.grey,
                ),
              ),
              secondCell,
            ],
          ],
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: rows,
    );
  }
}

class _ScoreTableElement extends StatelessWidget {
  final GamePlayerData playerData;

  const _ScoreTableElement({
    required this.playerData,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: 110,
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 9),
            Text(
              playerData.score.toString(),
              style: textTheme.titleMedium?.copyWith(
                color: AppColors.systemLight,
              ),
            ),
            const SizedBox(height: 7),
            Text(
              playerData.name,
              style: textTheme.bodySmall?.copyWith(
                color: AppColors.minorLight,
              ),
            ),
            const SizedBox(height: 3),
          ],
        ),
      ),
    );
  }
}
