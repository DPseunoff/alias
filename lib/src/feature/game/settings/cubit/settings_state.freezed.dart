// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsState {
  bool get penaltyForSkipping => throw _privateConstructorUsedError;
  int get wordsToWin => throw _privateConstructorUsedError;
  int get gameTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({bool penaltyForSkipping, int wordsToWin, int gameTime});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? penaltyForSkipping = null,
    Object? wordsToWin = null,
    Object? gameTime = null,
  }) {
    return _then(_value.copyWith(
      penaltyForSkipping: null == penaltyForSkipping
          ? _value.penaltyForSkipping
          : penaltyForSkipping // ignore: cast_nullable_to_non_nullable
              as bool,
      wordsToWin: null == wordsToWin
          ? _value.wordsToWin
          : wordsToWin // ignore: cast_nullable_to_non_nullable
              as int,
      gameTime: null == gameTime
          ? _value.gameTime
          : gameTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool penaltyForSkipping, int wordsToWin, int gameTime});
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? penaltyForSkipping = null,
    Object? wordsToWin = null,
    Object? gameTime = null,
  }) {
    return _then(_$SettingsStateImpl(
      penaltyForSkipping: null == penaltyForSkipping
          ? _value.penaltyForSkipping
          : penaltyForSkipping // ignore: cast_nullable_to_non_nullable
              as bool,
      wordsToWin: null == wordsToWin
          ? _value.wordsToWin
          : wordsToWin // ignore: cast_nullable_to_non_nullable
              as int,
      gameTime: null == gameTime
          ? _value.gameTime
          : gameTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  const _$SettingsStateImpl(
      {this.penaltyForSkipping = false,
      this.wordsToWin = 60,
      this.gameTime = 60});

  @override
  @JsonKey()
  final bool penaltyForSkipping;
  @override
  @JsonKey()
  final int wordsToWin;
  @override
  @JsonKey()
  final int gameTime;

  @override
  String toString() {
    return 'SettingsState(penaltyForSkipping: $penaltyForSkipping, wordsToWin: $wordsToWin, gameTime: $gameTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.penaltyForSkipping, penaltyForSkipping) ||
                other.penaltyForSkipping == penaltyForSkipping) &&
            (identical(other.wordsToWin, wordsToWin) ||
                other.wordsToWin == wordsToWin) &&
            (identical(other.gameTime, gameTime) ||
                other.gameTime == gameTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, penaltyForSkipping, wordsToWin, gameTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {final bool penaltyForSkipping,
      final int wordsToWin,
      final int gameTime}) = _$SettingsStateImpl;

  @override
  bool get penaltyForSkipping;
  @override
  int get wordsToWin;
  @override
  int get gameTime;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
