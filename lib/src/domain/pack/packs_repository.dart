import '../../data/packs/api/interface.dart';
import '../../data/packs/model/pack_data.dart';

class PacksRepository {
  final PacksApi _api;

  const PacksRepository({
    required PacksApi packsApi,
  }) : _api = packsApi;

  /// Stream of loaded packs.
  Stream<List<PackData>> get packs => _api.packs;
}
