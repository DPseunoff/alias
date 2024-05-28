import '../model/pack_data.dart';

abstract class PacksApi {
  /// Stream of loaded packs.
  Stream<List<PackData>> get packs;
}
