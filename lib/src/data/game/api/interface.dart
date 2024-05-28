import '../model/game_data.dart';

abstract class GameApi {
  GameData? get lastSavedGameData;

  Future<void> saveGame({required GameData game});

  Future<void> clearGame();
}
