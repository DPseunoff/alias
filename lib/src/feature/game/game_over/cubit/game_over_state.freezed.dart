// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_over_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameOverState {
  String get champion => throw _privateConstructorUsedError;
  List<GamePlayerData> get players => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameOverStateCopyWith<GameOverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameOverStateCopyWith<$Res> {
  factory $GameOverStateCopyWith(
          GameOverState value, $Res Function(GameOverState) then) =
      _$GameOverStateCopyWithImpl<$Res, GameOverState>;
  @useResult
  $Res call({String champion, List<GamePlayerData> players});
}

/// @nodoc
class _$GameOverStateCopyWithImpl<$Res, $Val extends GameOverState>
    implements $GameOverStateCopyWith<$Res> {
  _$GameOverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? champion = null,
    Object? players = null,
  }) {
    return _then(_value.copyWith(
      champion: null == champion
          ? _value.champion
          : champion // ignore: cast_nullable_to_non_nullable
              as String,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<GamePlayerData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameOverStateImplCopyWith<$Res>
    implements $GameOverStateCopyWith<$Res> {
  factory _$$GameOverStateImplCopyWith(
          _$GameOverStateImpl value, $Res Function(_$GameOverStateImpl) then) =
      __$$GameOverStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String champion, List<GamePlayerData> players});
}

/// @nodoc
class __$$GameOverStateImplCopyWithImpl<$Res>
    extends _$GameOverStateCopyWithImpl<$Res, _$GameOverStateImpl>
    implements _$$GameOverStateImplCopyWith<$Res> {
  __$$GameOverStateImplCopyWithImpl(
      _$GameOverStateImpl _value, $Res Function(_$GameOverStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? champion = null,
    Object? players = null,
  }) {
    return _then(_$GameOverStateImpl(
      champion: null == champion
          ? _value.champion
          : champion // ignore: cast_nullable_to_non_nullable
              as String,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<GamePlayerData>,
    ));
  }
}

/// @nodoc

class _$GameOverStateImpl implements _GameOverState {
  const _$GameOverStateImpl(
      {this.champion = '', final List<GamePlayerData> players = const []})
      : _players = players;

  @override
  @JsonKey()
  final String champion;
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
    return 'GameOverState(champion: $champion, players: $players)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameOverStateImpl &&
            (identical(other.champion, champion) ||
                other.champion == champion) &&
            const DeepCollectionEquality().equals(other._players, _players));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, champion, const DeepCollectionEquality().hash(_players));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameOverStateImplCopyWith<_$GameOverStateImpl> get copyWith =>
      __$$GameOverStateImplCopyWithImpl<_$GameOverStateImpl>(this, _$identity);
}

abstract class _GameOverState implements GameOverState {
  const factory _GameOverState(
      {final String champion,
      final List<GamePlayerData> players}) = _$GameOverStateImpl;

  @override
  String get champion;
  @override
  List<GamePlayerData> get players;
  @override
  @JsonKey(ignore: true)
  _$$GameOverStateImplCopyWith<_$GameOverStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
