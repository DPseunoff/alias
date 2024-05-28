// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teams_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeamsState {
  List<GamePlayerData> get players => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamsStateCopyWith<TeamsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamsStateCopyWith<$Res> {
  factory $TeamsStateCopyWith(
          TeamsState value, $Res Function(TeamsState) then) =
      _$TeamsStateCopyWithImpl<$Res, TeamsState>;
  @useResult
  $Res call({List<GamePlayerData> players});
}

/// @nodoc
class _$TeamsStateCopyWithImpl<$Res, $Val extends TeamsState>
    implements $TeamsStateCopyWith<$Res> {
  _$TeamsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<GamePlayerData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamsStateImplCopyWith<$Res>
    implements $TeamsStateCopyWith<$Res> {
  factory _$$TeamsStateImplCopyWith(
          _$TeamsStateImpl value, $Res Function(_$TeamsStateImpl) then) =
      __$$TeamsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GamePlayerData> players});
}

/// @nodoc
class __$$TeamsStateImplCopyWithImpl<$Res>
    extends _$TeamsStateCopyWithImpl<$Res, _$TeamsStateImpl>
    implements _$$TeamsStateImplCopyWith<$Res> {
  __$$TeamsStateImplCopyWithImpl(
      _$TeamsStateImpl _value, $Res Function(_$TeamsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
  }) {
    return _then(_$TeamsStateImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<GamePlayerData>,
    ));
  }
}

/// @nodoc

class _$TeamsStateImpl implements _TeamsState {
  const _$TeamsStateImpl({final List<GamePlayerData> players = const []})
      : _players = players;

  final List<GamePlayerData> _players;
  @override
  @JsonKey()
  List<GamePlayerData> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  String toString() {
    return 'TeamsState(players: $players)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamsStateImpl &&
            const DeepCollectionEquality().equals(other._players, _players));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_players));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamsStateImplCopyWith<_$TeamsStateImpl> get copyWith =>
      __$$TeamsStateImplCopyWithImpl<_$TeamsStateImpl>(this, _$identity);
}

abstract class _TeamsState implements TeamsState {
  const factory _TeamsState({final List<GamePlayerData> players}) =
      _$TeamsStateImpl;

  @override
  List<GamePlayerData> get players;
  @override
  @JsonKey(ignore: true)
  _$$TeamsStateImplCopyWith<_$TeamsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
