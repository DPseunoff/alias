// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pregame_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PregameState {
  GamePlayerData get currentPlayer => throw _privateConstructorUsedError;
  List<GamePlayerData> get allPlayers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PregameStateCopyWith<PregameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregameStateCopyWith<$Res> {
  factory $PregameStateCopyWith(
          PregameState value, $Res Function(PregameState) then) =
      _$PregameStateCopyWithImpl<$Res, PregameState>;
  @useResult
  $Res call({GamePlayerData currentPlayer, List<GamePlayerData> allPlayers});
}

/// @nodoc
class _$PregameStateCopyWithImpl<$Res, $Val extends PregameState>
    implements $PregameStateCopyWith<$Res> {
  _$PregameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPlayer = null,
    Object? allPlayers = null,
  }) {
    return _then(_value.copyWith(
      currentPlayer: null == currentPlayer
          ? _value.currentPlayer
          : currentPlayer // ignore: cast_nullable_to_non_nullable
              as GamePlayerData,
      allPlayers: null == allPlayers
          ? _value.allPlayers
          : allPlayers // ignore: cast_nullable_to_non_nullable
              as List<GamePlayerData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PregameStateImplCopyWith<$Res>
    implements $PregameStateCopyWith<$Res> {
  factory _$$PregameStateImplCopyWith(
          _$PregameStateImpl value, $Res Function(_$PregameStateImpl) then) =
      __$$PregameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GamePlayerData currentPlayer, List<GamePlayerData> allPlayers});
}

/// @nodoc
class __$$PregameStateImplCopyWithImpl<$Res>
    extends _$PregameStateCopyWithImpl<$Res, _$PregameStateImpl>
    implements _$$PregameStateImplCopyWith<$Res> {
  __$$PregameStateImplCopyWithImpl(
      _$PregameStateImpl _value, $Res Function(_$PregameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPlayer = null,
    Object? allPlayers = null,
  }) {
    return _then(_$PregameStateImpl(
      currentPlayer: null == currentPlayer
          ? _value.currentPlayer
          : currentPlayer // ignore: cast_nullable_to_non_nullable
              as GamePlayerData,
      allPlayers: null == allPlayers
          ? _value._allPlayers
          : allPlayers // ignore: cast_nullable_to_non_nullable
              as List<GamePlayerData>,
    ));
  }
}

/// @nodoc

class _$PregameStateImpl implements _PregameState {
  const _$PregameStateImpl(
      {required this.currentPlayer,
      required final List<GamePlayerData> allPlayers})
      : _allPlayers = allPlayers;

  @override
  final GamePlayerData currentPlayer;
  final List<GamePlayerData> _allPlayers;
  @override
  List<GamePlayerData> get allPlayers {
    if (_allPlayers is EqualUnmodifiableListView) return _allPlayers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allPlayers);
  }

  @override
  String toString() {
    return 'PregameState(currentPlayer: $currentPlayer, allPlayers: $allPlayers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PregameStateImpl &&
            (identical(other.currentPlayer, currentPlayer) ||
                other.currentPlayer == currentPlayer) &&
            const DeepCollectionEquality()
                .equals(other._allPlayers, _allPlayers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPlayer,
      const DeepCollectionEquality().hash(_allPlayers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PregameStateImplCopyWith<_$PregameStateImpl> get copyWith =>
      __$$PregameStateImplCopyWithImpl<_$PregameStateImpl>(this, _$identity);
}

abstract class _PregameState implements PregameState {
  const factory _PregameState(
      {required final GamePlayerData currentPlayer,
      required final List<GamePlayerData> allPlayers}) = _$PregameStateImpl;

  @override
  GamePlayerData get currentPlayer;
  @override
  List<GamePlayerData> get allPlayers;
  @override
  @JsonKey(ignore: true)
  _$$PregameStateImplCopyWith<_$PregameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
