// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'after_round_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AfterRoundState {
  GamePlayerData get currentPlayer => throw _privateConstructorUsedError;
  List<GamePlayerData> get allPlayers => throw _privateConstructorUsedError;
  int get currentRound => throw _privateConstructorUsedError;
  int get currentPlay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AfterRoundStateCopyWith<AfterRoundState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AfterRoundStateCopyWith<$Res> {
  factory $AfterRoundStateCopyWith(
          AfterRoundState value, $Res Function(AfterRoundState) then) =
      _$AfterRoundStateCopyWithImpl<$Res, AfterRoundState>;
  @useResult
  $Res call(
      {GamePlayerData currentPlayer,
      List<GamePlayerData> allPlayers,
      int currentRound,
      int currentPlay});
}

/// @nodoc
class _$AfterRoundStateCopyWithImpl<$Res, $Val extends AfterRoundState>
    implements $AfterRoundStateCopyWith<$Res> {
  _$AfterRoundStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPlayer = null,
    Object? allPlayers = null,
    Object? currentRound = null,
    Object? currentPlay = null,
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
      currentRound: null == currentRound
          ? _value.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as int,
      currentPlay: null == currentPlay
          ? _value.currentPlay
          : currentPlay // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AfterRoundStateImplCopyWith<$Res>
    implements $AfterRoundStateCopyWith<$Res> {
  factory _$$AfterRoundStateImplCopyWith(_$AfterRoundStateImpl value,
          $Res Function(_$AfterRoundStateImpl) then) =
      __$$AfterRoundStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GamePlayerData currentPlayer,
      List<GamePlayerData> allPlayers,
      int currentRound,
      int currentPlay});
}

/// @nodoc
class __$$AfterRoundStateImplCopyWithImpl<$Res>
    extends _$AfterRoundStateCopyWithImpl<$Res, _$AfterRoundStateImpl>
    implements _$$AfterRoundStateImplCopyWith<$Res> {
  __$$AfterRoundStateImplCopyWithImpl(
      _$AfterRoundStateImpl _value, $Res Function(_$AfterRoundStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPlayer = null,
    Object? allPlayers = null,
    Object? currentRound = null,
    Object? currentPlay = null,
  }) {
    return _then(_$AfterRoundStateImpl(
      currentPlayer: null == currentPlayer
          ? _value.currentPlayer
          : currentPlayer // ignore: cast_nullable_to_non_nullable
              as GamePlayerData,
      allPlayers: null == allPlayers
          ? _value._allPlayers
          : allPlayers // ignore: cast_nullable_to_non_nullable
              as List<GamePlayerData>,
      currentRound: null == currentRound
          ? _value.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as int,
      currentPlay: null == currentPlay
          ? _value.currentPlay
          : currentPlay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AfterRoundStateImpl implements _AfterRoundState {
  const _$AfterRoundStateImpl(
      {required this.currentPlayer,
      required final List<GamePlayerData> allPlayers,
      required this.currentRound,
      required this.currentPlay})
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
  final int currentRound;
  @override
  final int currentPlay;

  @override
  String toString() {
    return 'AfterRoundState(currentPlayer: $currentPlayer, allPlayers: $allPlayers, currentRound: $currentRound, currentPlay: $currentPlay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AfterRoundStateImpl &&
            (identical(other.currentPlayer, currentPlayer) ||
                other.currentPlayer == currentPlayer) &&
            const DeepCollectionEquality()
                .equals(other._allPlayers, _allPlayers) &&
            (identical(other.currentRound, currentRound) ||
                other.currentRound == currentRound) &&
            (identical(other.currentPlay, currentPlay) ||
                other.currentPlay == currentPlay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPlayer,
      const DeepCollectionEquality().hash(_allPlayers),
      currentRound,
      currentPlay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AfterRoundStateImplCopyWith<_$AfterRoundStateImpl> get copyWith =>
      __$$AfterRoundStateImplCopyWithImpl<_$AfterRoundStateImpl>(
          this, _$identity);
}

abstract class _AfterRoundState implements AfterRoundState {
  const factory _AfterRoundState(
      {required final GamePlayerData currentPlayer,
      required final List<GamePlayerData> allPlayers,
      required final int currentRound,
      required final int currentPlay}) = _$AfterRoundStateImpl;

  @override
  GamePlayerData get currentPlayer;
  @override
  List<GamePlayerData> get allPlayers;
  @override
  int get currentRound;
  @override
  int get currentPlay;
  @override
  @JsonKey(ignore: true)
  _$$AfterRoundStateImplCopyWith<_$AfterRoundStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
