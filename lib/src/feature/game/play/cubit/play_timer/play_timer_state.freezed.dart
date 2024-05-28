// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_timer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayTimerState {
  int get duration => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) progress,
    required TResult Function(int duration) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? pause,
    TResult? Function(int duration)? progress,
    TResult? Function(int duration)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? progress,
    TResult Function(int duration)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayTimerStateInitial value) initial,
    required TResult Function(PlayTimerStatePause value) pause,
    required TResult Function(PlayTimerStateProgress value) progress,
    required TResult Function(PlayTimerStateComplete value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayTimerStateInitial value)? initial,
    TResult? Function(PlayTimerStatePause value)? pause,
    TResult? Function(PlayTimerStateProgress value)? progress,
    TResult? Function(PlayTimerStateComplete value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayTimerStateInitial value)? initial,
    TResult Function(PlayTimerStatePause value)? pause,
    TResult Function(PlayTimerStateProgress value)? progress,
    TResult Function(PlayTimerStateComplete value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayTimerStateCopyWith<PlayTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayTimerStateCopyWith<$Res> {
  factory $PlayTimerStateCopyWith(
          PlayTimerState value, $Res Function(PlayTimerState) then) =
      _$PlayTimerStateCopyWithImpl<$Res, PlayTimerState>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class _$PlayTimerStateCopyWithImpl<$Res, $Val extends PlayTimerState>
    implements $PlayTimerStateCopyWith<$Res> {
  _$PlayTimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayTimerStateInitialImplCopyWith<$Res>
    implements $PlayTimerStateCopyWith<$Res> {
  factory _$$PlayTimerStateInitialImplCopyWith(
          _$PlayTimerStateInitialImpl value,
          $Res Function(_$PlayTimerStateInitialImpl) then) =
      __$$PlayTimerStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$PlayTimerStateInitialImplCopyWithImpl<$Res>
    extends _$PlayTimerStateCopyWithImpl<$Res, _$PlayTimerStateInitialImpl>
    implements _$$PlayTimerStateInitialImplCopyWith<$Res> {
  __$$PlayTimerStateInitialImplCopyWithImpl(_$PlayTimerStateInitialImpl _value,
      $Res Function(_$PlayTimerStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$PlayTimerStateInitialImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayTimerStateInitialImpl extends PlayTimerStateInitial {
  const _$PlayTimerStateInitialImpl({required this.duration}) : super._();

  @override
  final int duration;

  @override
  String toString() {
    return 'PlayTimerState.initial(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayTimerStateInitialImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayTimerStateInitialImplCopyWith<_$PlayTimerStateInitialImpl>
      get copyWith => __$$PlayTimerStateInitialImplCopyWithImpl<
          _$PlayTimerStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) progress,
    required TResult Function(int duration) complete,
  }) {
    return initial(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? pause,
    TResult? Function(int duration)? progress,
    TResult? Function(int duration)? complete,
  }) {
    return initial?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? progress,
    TResult Function(int duration)? complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayTimerStateInitial value) initial,
    required TResult Function(PlayTimerStatePause value) pause,
    required TResult Function(PlayTimerStateProgress value) progress,
    required TResult Function(PlayTimerStateComplete value) complete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayTimerStateInitial value)? initial,
    TResult? Function(PlayTimerStatePause value)? pause,
    TResult? Function(PlayTimerStateProgress value)? progress,
    TResult? Function(PlayTimerStateComplete value)? complete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayTimerStateInitial value)? initial,
    TResult Function(PlayTimerStatePause value)? pause,
    TResult Function(PlayTimerStateProgress value)? progress,
    TResult Function(PlayTimerStateComplete value)? complete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PlayTimerStateInitial extends PlayTimerState {
  const factory PlayTimerStateInitial({required final int duration}) =
      _$PlayTimerStateInitialImpl;
  const PlayTimerStateInitial._() : super._();

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$PlayTimerStateInitialImplCopyWith<_$PlayTimerStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayTimerStatePauseImplCopyWith<$Res>
    implements $PlayTimerStateCopyWith<$Res> {
  factory _$$PlayTimerStatePauseImplCopyWith(_$PlayTimerStatePauseImpl value,
          $Res Function(_$PlayTimerStatePauseImpl) then) =
      __$$PlayTimerStatePauseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$PlayTimerStatePauseImplCopyWithImpl<$Res>
    extends _$PlayTimerStateCopyWithImpl<$Res, _$PlayTimerStatePauseImpl>
    implements _$$PlayTimerStatePauseImplCopyWith<$Res> {
  __$$PlayTimerStatePauseImplCopyWithImpl(_$PlayTimerStatePauseImpl _value,
      $Res Function(_$PlayTimerStatePauseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$PlayTimerStatePauseImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayTimerStatePauseImpl extends PlayTimerStatePause {
  const _$PlayTimerStatePauseImpl({required this.duration}) : super._();

  @override
  final int duration;

  @override
  String toString() {
    return 'PlayTimerState.pause(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayTimerStatePauseImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayTimerStatePauseImplCopyWith<_$PlayTimerStatePauseImpl> get copyWith =>
      __$$PlayTimerStatePauseImplCopyWithImpl<_$PlayTimerStatePauseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) progress,
    required TResult Function(int duration) complete,
  }) {
    return pause(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? pause,
    TResult? Function(int duration)? progress,
    TResult? Function(int duration)? complete,
  }) {
    return pause?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? progress,
    TResult Function(int duration)? complete,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayTimerStateInitial value) initial,
    required TResult Function(PlayTimerStatePause value) pause,
    required TResult Function(PlayTimerStateProgress value) progress,
    required TResult Function(PlayTimerStateComplete value) complete,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayTimerStateInitial value)? initial,
    TResult? Function(PlayTimerStatePause value)? pause,
    TResult? Function(PlayTimerStateProgress value)? progress,
    TResult? Function(PlayTimerStateComplete value)? complete,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayTimerStateInitial value)? initial,
    TResult Function(PlayTimerStatePause value)? pause,
    TResult Function(PlayTimerStateProgress value)? progress,
    TResult Function(PlayTimerStateComplete value)? complete,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class PlayTimerStatePause extends PlayTimerState {
  const factory PlayTimerStatePause({required final int duration}) =
      _$PlayTimerStatePauseImpl;
  const PlayTimerStatePause._() : super._();

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$PlayTimerStatePauseImplCopyWith<_$PlayTimerStatePauseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayTimerStateProgressImplCopyWith<$Res>
    implements $PlayTimerStateCopyWith<$Res> {
  factory _$$PlayTimerStateProgressImplCopyWith(
          _$PlayTimerStateProgressImpl value,
          $Res Function(_$PlayTimerStateProgressImpl) then) =
      __$$PlayTimerStateProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$PlayTimerStateProgressImplCopyWithImpl<$Res>
    extends _$PlayTimerStateCopyWithImpl<$Res, _$PlayTimerStateProgressImpl>
    implements _$$PlayTimerStateProgressImplCopyWith<$Res> {
  __$$PlayTimerStateProgressImplCopyWithImpl(
      _$PlayTimerStateProgressImpl _value,
      $Res Function(_$PlayTimerStateProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$PlayTimerStateProgressImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayTimerStateProgressImpl extends PlayTimerStateProgress {
  const _$PlayTimerStateProgressImpl({required this.duration}) : super._();

  @override
  final int duration;

  @override
  String toString() {
    return 'PlayTimerState.progress(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayTimerStateProgressImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayTimerStateProgressImplCopyWith<_$PlayTimerStateProgressImpl>
      get copyWith => __$$PlayTimerStateProgressImplCopyWithImpl<
          _$PlayTimerStateProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) progress,
    required TResult Function(int duration) complete,
  }) {
    return progress(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? pause,
    TResult? Function(int duration)? progress,
    TResult? Function(int duration)? complete,
  }) {
    return progress?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? progress,
    TResult Function(int duration)? complete,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayTimerStateInitial value) initial,
    required TResult Function(PlayTimerStatePause value) pause,
    required TResult Function(PlayTimerStateProgress value) progress,
    required TResult Function(PlayTimerStateComplete value) complete,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayTimerStateInitial value)? initial,
    TResult? Function(PlayTimerStatePause value)? pause,
    TResult? Function(PlayTimerStateProgress value)? progress,
    TResult? Function(PlayTimerStateComplete value)? complete,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayTimerStateInitial value)? initial,
    TResult Function(PlayTimerStatePause value)? pause,
    TResult Function(PlayTimerStateProgress value)? progress,
    TResult Function(PlayTimerStateComplete value)? complete,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class PlayTimerStateProgress extends PlayTimerState {
  const factory PlayTimerStateProgress({required final int duration}) =
      _$PlayTimerStateProgressImpl;
  const PlayTimerStateProgress._() : super._();

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$PlayTimerStateProgressImplCopyWith<_$PlayTimerStateProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayTimerStateCompleteImplCopyWith<$Res>
    implements $PlayTimerStateCopyWith<$Res> {
  factory _$$PlayTimerStateCompleteImplCopyWith(
          _$PlayTimerStateCompleteImpl value,
          $Res Function(_$PlayTimerStateCompleteImpl) then) =
      __$$PlayTimerStateCompleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$PlayTimerStateCompleteImplCopyWithImpl<$Res>
    extends _$PlayTimerStateCopyWithImpl<$Res, _$PlayTimerStateCompleteImpl>
    implements _$$PlayTimerStateCompleteImplCopyWith<$Res> {
  __$$PlayTimerStateCompleteImplCopyWithImpl(
      _$PlayTimerStateCompleteImpl _value,
      $Res Function(_$PlayTimerStateCompleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$PlayTimerStateCompleteImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayTimerStateCompleteImpl extends PlayTimerStateComplete {
  const _$PlayTimerStateCompleteImpl({this.duration = 0}) : super._();

  @override
  @JsonKey()
  final int duration;

  @override
  String toString() {
    return 'PlayTimerState.complete(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayTimerStateCompleteImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayTimerStateCompleteImplCopyWith<_$PlayTimerStateCompleteImpl>
      get copyWith => __$$PlayTimerStateCompleteImplCopyWithImpl<
          _$PlayTimerStateCompleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) initial,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) progress,
    required TResult Function(int duration) complete,
  }) {
    return complete(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? initial,
    TResult? Function(int duration)? pause,
    TResult? Function(int duration)? progress,
    TResult? Function(int duration)? complete,
  }) {
    return complete?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? initial,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? progress,
    TResult Function(int duration)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayTimerStateInitial value) initial,
    required TResult Function(PlayTimerStatePause value) pause,
    required TResult Function(PlayTimerStateProgress value) progress,
    required TResult Function(PlayTimerStateComplete value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayTimerStateInitial value)? initial,
    TResult? Function(PlayTimerStatePause value)? pause,
    TResult? Function(PlayTimerStateProgress value)? progress,
    TResult? Function(PlayTimerStateComplete value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayTimerStateInitial value)? initial,
    TResult Function(PlayTimerStatePause value)? pause,
    TResult Function(PlayTimerStateProgress value)? progress,
    TResult Function(PlayTimerStateComplete value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class PlayTimerStateComplete extends PlayTimerState {
  const factory PlayTimerStateComplete({final int duration}) =
      _$PlayTimerStateCompleteImpl;
  const PlayTimerStateComplete._() : super._();

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$PlayTimerStateCompleteImplCopyWith<_$PlayTimerStateCompleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}
