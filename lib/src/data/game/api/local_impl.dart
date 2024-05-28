import 'dart:async';
import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/game_data.dart';
import 'interface.dart';

class GameLocalApi implements GameApi {
  static const _kLastGameKey = '__last_game__';

  late final _log = Logger();

  GameData? _lastGame;

  final SharedPreferences _preferences;

  GameLocalApi({
    required SharedPreferences sharedPreferences,
  }) : _preferences = sharedPreferences {
    _init();
  }

  @override
  GameData? get lastSavedGameData => _lastGame;

  @override
  Future<void> saveGame({required GameData game}) async {
    await _preferences.setString(_kLastGameKey, jsonEncode(game.toJson()));
    _lastGame = game;
    _log.d('GameLocalApi: Game saved');
  }

  @override
  Future<void> clearGame() async {
    await _preferences.remove(_kLastGameKey);
    _lastGame = null;
    _log.i('GameLocalApi: Last game cleared');
  }

  void _init() {
    final gameJson = _preferences.getString(_kLastGameKey);
    if (gameJson == null) {
      _log.i('GameLocalApi: No saved game');
      return;
    }

    _lastGame = GameData.fromJson(jsonDecode(gameJson));
    _log.i('GameLocalApi: Last saved game loaded');
  }
}
