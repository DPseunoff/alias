import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/packs/model/pack_data.dart';

part 'packs_state.freezed.dart';

@freezed
class PacksState with _$PacksState {
  const factory PacksState.success({
    required List<PackData> packs,
  }) = _PacksStateSuccess;

  const factory PacksState.loading() = _PacksStateLoading;

  const factory PacksState.error() = _PacksStateError;
}
