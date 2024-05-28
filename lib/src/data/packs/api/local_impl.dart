import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';

import '../model/pack_data.dart';
import 'interface.dart';

class PacksLocalApi implements PacksApi {
  static const List<String> _sourceFiles = [
    'assets/packs/packs/anime.json',
    'assets/packs/packs/games.json',
  ];

  late final _log = Logger();

  PacksLocalApi() {
    _init();
  }

  late final _packsStreamController =
      BehaviorSubject<List<PackData>>.seeded(const []);

  @override
  Stream<List<PackData>> get packs => _packsStreamController.stream;

  Future<void> _init() async {
    final loadedPacks = <PackData>[];

    for (final path in _sourceFiles) {
      final input = await rootBundle.loadString(path);
      final map = jsonDecode(input);
      final pack = PackData.fromJson(map);
      loadedPacks.add(pack);
    }

    _log.i('PacksLocalApi: Packs successfully loaded');
    _packsStreamController.add(loadedPacks);
  }
}
