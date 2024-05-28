// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'words_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WordsState {
  String get currentPlayerName => throw _privateConstructorUsedError;
  int get round => throw _privateConstructorUsedError;
  int get play => throw _privateConstructorUsedError;
  Map<String, bool> get guessedPassed => throw _privateConstructorUsedError;
  int get profit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordsStateCopyWith<WordsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordsStateCopyWith<$Res> {
  factory $WordsStateCopyWith(
          WordsState value, $Res Function(WordsState) then) =
      _$WordsStateCopyWithImpl<$Res, WordsState>;
  @useResult
  $Res call(
      {String currentPlayerName,
      int round,
      int play,
      Map<String, bool> guessedPassed,
      int profit});
}

/// @nodoc
class _$WordsStateCopyWithImpl<$Res, $Val extends WordsState>
    implements $WordsStateCopyWith<$Res> {
  _$WordsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPlayerName = null,
    Object? round = null,
    Object? play = null,
    Object? guessedPassed = null,
    Object? profit = null,
  }) {
    return _then(_value.copyWith(
      currentPlayerName: null == currentPlayerName
          ? _value.currentPlayerName
          : currentPlayerName // ignore: cast_nullable_to_non_nullable
              as String,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
      play: null == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as int,
      guessedPassed: null == guessedPassed
          ? _value.guessedPassed
          : guessedPassed // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      profit: null == profit
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordsStateImplCopyWith<$Res>
    implements $WordsStateCopyWith<$Res> {
  factory _$$WordsStateImplCopyWith(
          _$WordsStateImpl value, $Res Function(_$WordsStateImpl) then) =
      __$$WordsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currentPlayerName,
      int round,
      int play,
      Map<String, bool> guessedPassed,
      int profit});
}

/// @nodoc
class __$$WordsStateImplCopyWithImpl<$Res>
    extends _$WordsStateCopyWithImpl<$Res, _$WordsStateImpl>
    implements _$$WordsStateImplCopyWith<$Res> {
  __$$WordsStateImplCopyWithImpl(
      _$WordsStateImpl _value, $Res Function(_$WordsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPlayerName = null,
    Object? round = null,
    Object? play = null,
    Object? guessedPassed = null,
    Object? profit = null,
  }) {
    return _then(_$WordsStateImpl(
      currentPlayerName: null == currentPlayerName
          ? _value.currentPlayerName
          : currentPlayerName // ignore: cast_nullable_to_non_nullable
              as String,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
      play: null == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as int,
      guessedPassed: null == guessedPassed
          ? _value._guessedPassed
          : guessedPassed // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      profit: null == profit
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WordsStateImpl implements _WordsState {
  const _$WordsStateImpl(
      {this.currentPlayerName = '',
      this.round = 0,
      this.play = 0,
      final Map<String, bool> guessedPassed = const {},
      this.profit = 0})
      : _guessedPassed = guessedPassed;

  @override
  @JsonKey()
  final String currentPlayerName;
  @override
  @JsonKey()
  final int round;
  @override
  @JsonKey()
  final int play;
  final Map<String, bool> _guessedPassed;
  @override
  @JsonKey()
  Map<String, bool> get guessedPassed {
    if (_guessedPassed is EqualUnmodifiableMapView) return _guessedPassed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_guessedPassed);
  }

  @override
  @JsonKey()
  final int profit;

  @override
  String toString() {
    return 'WordsState(currentPlayerName: $currentPlayerName, round: $round, play: $play, guessedPassed: $guessedPassed, profit: $profit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordsStateImpl &&
            (identical(other.currentPlayerName, currentPlayerName) ||
                other.currentPlayerName == currentPlayerName) &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.play, play) || other.play == play) &&
            const DeepCollectionEquality()
                .equals(other._guessedPassed, _guessedPassed) &&
            (identical(other.profit, profit) || other.profit == profit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPlayerName, round, play,
      const DeepCollectionEquality().hash(_guessedPassed), profit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordsStateImplCopyWith<_$WordsStateImpl> get copyWith =>
      __$$WordsStateImplCopyWithImpl<_$WordsStateImpl>(this, _$identity);
}

abstract class _WordsState implements WordsState {
  const factory _WordsState(
      {final String currentPlayerName,
      final int round,
      final int play,
      final Map<String, bool> guessedPassed,
      final int profit}) = _$WordsStateImpl;

  @override
  String get currentPlayerName;
  @override
  int get round;
  @override
  int get play;
  @override
  Map<String, bool> get guessedPassed;
  @override
  int get profit;
  @override
  @JsonKey(ignore: true)
  _$$WordsStateImplCopyWith<_$WordsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
