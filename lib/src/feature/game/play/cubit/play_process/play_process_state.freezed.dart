// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_process_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayProcessState {
  List<String> get gameWords => throw _privateConstructorUsedError;
  Map<String, bool> get processedWords => throw _privateConstructorUsedError;
  int get lastShowWordIndex => throw _privateConstructorUsedError;
  int get guessed => throw _privateConstructorUsedError;
  int get passed => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String> gameWords,
            Map<String, bool> processedWords,
            int lastShowWordIndex,
            int guessed,
            int passed)
        resumed,
    required TResult Function(
            List<String> gameWords,
            Map<String, bool> processedWords,
            int lastShowWordIndex,
            int guessed,
            int passed)
        paused,
    required TResult Function(
            List<String> gameWords,
            Map<String, bool> processedWords,
            int lastShowWordIndex,
            int guessed,
            int passed)
        over,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        resumed,
    TResult? Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        paused,
    TResult? Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        over,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        resumed,
    TResult Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        paused,
    TResult Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        over,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayProcessStateResumed value) resumed,
    required TResult Function(_PlayProcessStatePaused value) paused,
    required TResult Function(_PlayProcessStateOver value) over,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayProcessStateResumed value)? resumed,
    TResult? Function(_PlayProcessStatePaused value)? paused,
    TResult? Function(_PlayProcessStateOver value)? over,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayProcessStateResumed value)? resumed,
    TResult Function(_PlayProcessStatePaused value)? paused,
    TResult Function(_PlayProcessStateOver value)? over,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayProcessStateCopyWith<PlayProcessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayProcessStateCopyWith<$Res> {
  factory $PlayProcessStateCopyWith(
          PlayProcessState value, $Res Function(PlayProcessState) then) =
      _$PlayProcessStateCopyWithImpl<$Res, PlayProcessState>;
  @useResult
  $Res call(
      {List<String> gameWords,
      Map<String, bool> processedWords,
      int lastShowWordIndex,
      int guessed,
      int passed});
}

/// @nodoc
class _$PlayProcessStateCopyWithImpl<$Res, $Val extends PlayProcessState>
    implements $PlayProcessStateCopyWith<$Res> {
  _$PlayProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameWords = null,
    Object? processedWords = null,
    Object? lastShowWordIndex = null,
    Object? guessed = null,
    Object? passed = null,
  }) {
    return _then(_value.copyWith(
      gameWords: null == gameWords
          ? _value.gameWords
          : gameWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      processedWords: null == processedWords
          ? _value.processedWords
          : processedWords // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      lastShowWordIndex: null == lastShowWordIndex
          ? _value.lastShowWordIndex
          : lastShowWordIndex // ignore: cast_nullable_to_non_nullable
              as int,
      guessed: null == guessed
          ? _value.guessed
          : guessed // ignore: cast_nullable_to_non_nullable
              as int,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayProcessStateResumedImplCopyWith<$Res>
    implements $PlayProcessStateCopyWith<$Res> {
  factory _$$PlayProcessStateResumedImplCopyWith(
          _$PlayProcessStateResumedImpl value,
          $Res Function(_$PlayProcessStateResumedImpl) then) =
      __$$PlayProcessStateResumedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> gameWords,
      Map<String, bool> processedWords,
      int lastShowWordIndex,
      int guessed,
      int passed});
}

/// @nodoc
class __$$PlayProcessStateResumedImplCopyWithImpl<$Res>
    extends _$PlayProcessStateCopyWithImpl<$Res, _$PlayProcessStateResumedImpl>
    implements _$$PlayProcessStateResumedImplCopyWith<$Res> {
  __$$PlayProcessStateResumedImplCopyWithImpl(
      _$PlayProcessStateResumedImpl _value,
      $Res Function(_$PlayProcessStateResumedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameWords = null,
    Object? processedWords = null,
    Object? lastShowWordIndex = null,
    Object? guessed = null,
    Object? passed = null,
  }) {
    return _then(_$PlayProcessStateResumedImpl(
      gameWords: null == gameWords
          ? _value._gameWords
          : gameWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      processedWords: null == processedWords
          ? _value._processedWords
          : processedWords // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      lastShowWordIndex: null == lastShowWordIndex
          ? _value.lastShowWordIndex
          : lastShowWordIndex // ignore: cast_nullable_to_non_nullable
              as int,
      guessed: null == guessed
          ? _value.guessed
          : guessed // ignore: cast_nullable_to_non_nullable
              as int,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayProcessStateResumedImpl extends _PlayProcessStateResumed {
  const _$PlayProcessStateResumedImpl(
      {final List<String> gameWords = const [],
      final Map<String, bool> processedWords = const {},
      this.lastShowWordIndex = 0,
      this.guessed = 0,
      this.passed = 0})
      : _gameWords = gameWords,
        _processedWords = processedWords,
        super._();

  final List<String> _gameWords;
  @override
  @JsonKey()
  List<String> get gameWords {
    if (_gameWords is EqualUnmodifiableListView) return _gameWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameWords);
  }

  final Map<String, bool> _processedWords;
  @override
  @JsonKey()
  Map<String, bool> get processedWords {
    if (_processedWords is EqualUnmodifiableMapView) return _processedWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_processedWords);
  }

  @override
  @JsonKey()
  final int lastShowWordIndex;
  @override
  @JsonKey()
  final int guessed;
  @override
  @JsonKey()
  final int passed;

  @override
  String toString() {
    return 'PlayProcessState.resumed(gameWords: $gameWords, processedWords: $processedWords, lastShowWordIndex: $lastShowWordIndex, guessed: $guessed, passed: $passed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayProcessStateResumedImpl &&
            const DeepCollectionEquality()
                .equals(other._gameWords, _gameWords) &&
            const DeepCollectionEquality()
                .equals(other._processedWords, _processedWords) &&
            (identical(other.lastShowWordIndex, lastShowWordIndex) ||
                other.lastShowWordIndex == lastShowWordIndex) &&
            (identical(other.guessed, guessed) || other.guessed == guessed) &&
            (identical(other.passed, passed) || other.passed == passed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_gameWords),
      const DeepCollectionEquality().hash(_processedWords),
      lastShowWordIndex,
      guessed,
      passed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayProcessStateResumedImplCopyWith<_$PlayProcessStateResumedImpl>
      get copyWith => __$$PlayProcessStateResumedImplCopyWithImpl<
          _$PlayProcessStateResumedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String> gameWords,
            Map<String, bool> processedWords,
            int lastShowWordIndex,
            int guessed,
            int passed)
        resumed,
    required TResult Function(
            List<String> gameWords,
            Map<String, bool> processedWords,
            int lastShowWordIndex,
            int guessed,
            int passed)
        paused,
    required TResult Function(
            List<String> gameWords,
            Map<String, bool> processedWords,
            int lastShowWordIndex,
            int guessed,
            int passed)
        over,
  }) {
    return resumed(
        gameWords, processedWords, lastShowWordIndex, guessed, passed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        resumed,
    TResult? Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        paused,
    TResult? Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        over,
  }) {
    return resumed?.call(
        gameWords, processedWords, lastShowWordIndex, guessed, passed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        resumed,
    TResult Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        paused,
    TResult Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        over,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed(
          gameWords, processedWords, lastShowWordIndex, guessed, passed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayProcessStateResumed value) resumed,
    required TResult Function(_PlayProcessStatePaused value) paused,
    required TResult Function(_PlayProcessStateOver value) over,
  }) {
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayProcessStateResumed value)? resumed,
    TResult? Function(_PlayProcessStatePaused value)? paused,
    TResult? Function(_PlayProcessStateOver value)? over,
  }) {
    return resumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayProcessStateResumed value)? resumed,
    TResult Function(_PlayProcessStatePaused value)? paused,
    TResult Function(_PlayProcessStateOver value)? over,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed(this);
    }
    return orElse();
  }
}

abstract class _PlayProcessStateResumed extends PlayProcessState {
  const factory _PlayProcessStateResumed(
      {final List<String> gameWords,
      final Map<String, bool> processedWords,
      final int lastShowWordIndex,
      final int guessed,
      final int passed}) = _$PlayProcessStateResumedImpl;
  const _PlayProcessStateResumed._() : super._();

  @override
  List<String> get gameWords;
  @override
  Map<String, bool> get processedWords;
  @override
  int get lastShowWordIndex;
  @override
  int get guessed;
  @override
  int get passed;
  @override
  @JsonKey(ignore: true)
  _$$PlayProcessStateResumedImplCopyWith<_$PlayProcessStateResumedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayProcessStatePausedImplCopyWith<$Res>
    implements $PlayProcessStateCopyWith<$Res> {
  factory _$$PlayProcessStatePausedImplCopyWith(
          _$PlayProcessStatePausedImpl value,
          $Res Function(_$PlayProcessStatePausedImpl) then) =
      __$$PlayProcessStatePausedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> gameWords,
      Map<String, bool> processedWords,
      int lastShowWordIndex,
      int guessed,
      int passed});
}

/// @nodoc
class __$$PlayProcessStatePausedImplCopyWithImpl<$Res>
    extends _$PlayProcessStateCopyWithImpl<$Res, _$PlayProcessStatePausedImpl>
    implements _$$PlayProcessStatePausedImplCopyWith<$Res> {
  __$$PlayProcessStatePausedImplCopyWithImpl(
      _$PlayProcessStatePausedImpl _value,
      $Res Function(_$PlayProcessStatePausedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameWords = null,
    Object? processedWords = null,
    Object? lastShowWordIndex = null,
    Object? guessed = null,
    Object? passed = null,
  }) {
    return _then(_$PlayProcessStatePausedImpl(
      gameWords: null == gameWords
          ? _value._gameWords
          : gameWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      processedWords: null == processedWords
          ? _value._processedWords
          : processedWords // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      lastShowWordIndex: null == lastShowWordIndex
          ? _value.lastShowWordIndex
          : lastShowWordIndex // ignore: cast_nullable_to_non_nullable
              as int,
      guessed: null == guessed
          ? _value.guessed
          : guessed // ignore: cast_nullable_to_non_nullable
              as int,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayProcessStatePausedImpl extends _PlayProcessStatePaused {
  const _$PlayProcessStatePausedImpl(
      {final List<String> gameWords = const [],
      final Map<String, bool> processedWords = const {},
      this.lastShowWordIndex = 0,
      this.guessed = 0,
      this.passed = 0})
      : _gameWords = gameWords,
        _processedWords = processedWords,
        super._();

  final List<String> _gameWords;
  @override
  @JsonKey()
  List<String> get gameWords {
    if (_gameWords is EqualUnmodifiableListView) return _gameWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameWords);
  }

  final Map<String, bool> _processedWords;
  @override
  @JsonKey()
  Map<String, bool> get processedWords {
    if (_processedWords is EqualUnmodifiableMapView) return _processedWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_processedWords);
  }

  @override
  @JsonKey()
  final int lastShowWordIndex;
  @override
  @JsonKey()
  final int guessed;
  @override
  @JsonKey()
  final int passed;

  @override
  String toString() {
    return 'PlayProcessState.paused(gameWords: $gameWords, processedWords: $processedWords, lastShowWordIndex: $lastShowWordIndex, guessed: $guessed, passed: $passed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayProcessStatePausedImpl &&
            const DeepCollectionEquality()
                .equals(other._gameWords, _gameWords) &&
            const DeepCollectionEquality()
                .equals(other._processedWords, _processedWords) &&
            (identical(other.lastShowWordIndex, lastShowWordIndex) ||
                other.lastShowWordIndex == lastShowWordIndex) &&
            (identical(other.guessed, guessed) || other.guessed == guessed) &&
            (identical(other.passed, passed) || other.passed == passed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_gameWords),
      const DeepCollectionEquality().hash(_processedWords),
      lastShowWordIndex,
      guessed,
      passed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayProcessStatePausedImplCopyWith<_$PlayProcessStatePausedImpl>
      get copyWith => __$$PlayProcessStatePausedImplCopyWithImpl<
          _$PlayProcessStatePausedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String> gameWords,
            Map<String, bool> processedWords,
            int lastShowWordIndex,
            int guessed,
            int passed)
        resumed,
    required TResult Function(
            List<String> gameWords,
            Map<String, bool> processedWords,
            int lastShowWordIndex,
            int guessed,
            int passed)
        paused,
    required TResult Function(
            List<String> gameWords,
            Map<String, bool> processedWords,
            int lastShowWordIndex,
            int guessed,
            int passed)
        over,
  }) {
    return paused(
        gameWords, processedWords, lastShowWordIndex, guessed, passed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        resumed,
    TResult? Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        paused,
    TResult? Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        over,
  }) {
    return paused?.call(
        gameWords, processedWords, lastShowWordIndex, guessed, passed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        resumed,
    TResult Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        paused,
    TResult Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        over,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(
          gameWords, processedWords, lastShowWordIndex, guessed, passed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayProcessStateResumed value) resumed,
    required TResult Function(_PlayProcessStatePaused value) paused,
    required TResult Function(_PlayProcessStateOver value) over,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayProcessStateResumed value)? resumed,
    TResult? Function(_PlayProcessStatePaused value)? paused,
    TResult? Function(_PlayProcessStateOver value)? over,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayProcessStateResumed value)? resumed,
    TResult Function(_PlayProcessStatePaused value)? paused,
    TResult Function(_PlayProcessStateOver value)? over,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _PlayProcessStatePaused extends PlayProcessState {
  const factory _PlayProcessStatePaused(
      {final List<String> gameWords,
      final Map<String, bool> processedWords,
      final int lastShowWordIndex,
      final int guessed,
      final int passed}) = _$PlayProcessStatePausedImpl;
  const _PlayProcessStatePaused._() : super._();

  @override
  List<String> get gameWords;
  @override
  Map<String, bool> get processedWords;
  @override
  int get lastShowWordIndex;
  @override
  int get guessed;
  @override
  int get passed;
  @override
  @JsonKey(ignore: true)
  _$$PlayProcessStatePausedImplCopyWith<_$PlayProcessStatePausedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayProcessStateOverImplCopyWith<$Res>
    implements $PlayProcessStateCopyWith<$Res> {
  factory _$$PlayProcessStateOverImplCopyWith(_$PlayProcessStateOverImpl value,
          $Res Function(_$PlayProcessStateOverImpl) then) =
      __$$PlayProcessStateOverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> gameWords,
      Map<String, bool> processedWords,
      int lastShowWordIndex,
      int guessed,
      int passed});
}

/// @nodoc
class __$$PlayProcessStateOverImplCopyWithImpl<$Res>
    extends _$PlayProcessStateCopyWithImpl<$Res, _$PlayProcessStateOverImpl>
    implements _$$PlayProcessStateOverImplCopyWith<$Res> {
  __$$PlayProcessStateOverImplCopyWithImpl(_$PlayProcessStateOverImpl _value,
      $Res Function(_$PlayProcessStateOverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameWords = null,
    Object? processedWords = null,
    Object? lastShowWordIndex = null,
    Object? guessed = null,
    Object? passed = null,
  }) {
    return _then(_$PlayProcessStateOverImpl(
      gameWords: null == gameWords
          ? _value._gameWords
          : gameWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      processedWords: null == processedWords
          ? _value._processedWords
          : processedWords // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      lastShowWordIndex: null == lastShowWordIndex
          ? _value.lastShowWordIndex
          : lastShowWordIndex // ignore: cast_nullable_to_non_nullable
              as int,
      guessed: null == guessed
          ? _value.guessed
          : guessed // ignore: cast_nullable_to_non_nullable
              as int,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayProcessStateOverImpl extends _PlayProcessStateOver {
  const _$PlayProcessStateOverImpl(
      {final List<String> gameWords = const [],
      final Map<String, bool> processedWords = const {},
      this.lastShowWordIndex = 0,
      this.guessed = 0,
      this.passed = 0})
      : _gameWords = gameWords,
        _processedWords = processedWords,
        super._();

  final List<String> _gameWords;
  @override
  @JsonKey()
  List<String> get gameWords {
    if (_gameWords is EqualUnmodifiableListView) return _gameWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameWords);
  }

  final Map<String, bool> _processedWords;
  @override
  @JsonKey()
  Map<String, bool> get processedWords {
    if (_processedWords is EqualUnmodifiableMapView) return _processedWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_processedWords);
  }

  @override
  @JsonKey()
  final int lastShowWordIndex;
  @override
  @JsonKey()
  final int guessed;
  @override
  @JsonKey()
  final int passed;

  @override
  String toString() {
    return 'PlayProcessState.over(gameWords: $gameWords, processedWords: $processedWords, lastShowWordIndex: $lastShowWordIndex, guessed: $guessed, passed: $passed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayProcessStateOverImpl &&
            const DeepCollectionEquality()
                .equals(other._gameWords, _gameWords) &&
            const DeepCollectionEquality()
                .equals(other._processedWords, _processedWords) &&
            (identical(other.lastShowWordIndex, lastShowWordIndex) ||
                other.lastShowWordIndex == lastShowWordIndex) &&
            (identical(other.guessed, guessed) || other.guessed == guessed) &&
            (identical(other.passed, passed) || other.passed == passed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_gameWords),
      const DeepCollectionEquality().hash(_processedWords),
      lastShowWordIndex,
      guessed,
      passed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayProcessStateOverImplCopyWith<_$PlayProcessStateOverImpl>
      get copyWith =>
          __$$PlayProcessStateOverImplCopyWithImpl<_$PlayProcessStateOverImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<String> gameWords,
            Map<String, bool> processedWords,
            int lastShowWordIndex,
            int guessed,
            int passed)
        resumed,
    required TResult Function(
            List<String> gameWords,
            Map<String, bool> processedWords,
            int lastShowWordIndex,
            int guessed,
            int passed)
        paused,
    required TResult Function(
            List<String> gameWords,
            Map<String, bool> processedWords,
            int lastShowWordIndex,
            int guessed,
            int passed)
        over,
  }) {
    return over(gameWords, processedWords, lastShowWordIndex, guessed, passed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        resumed,
    TResult? Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        paused,
    TResult? Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        over,
  }) {
    return over?.call(
        gameWords, processedWords, lastShowWordIndex, guessed, passed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        resumed,
    TResult Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        paused,
    TResult Function(List<String> gameWords, Map<String, bool> processedWords,
            int lastShowWordIndex, int guessed, int passed)?
        over,
    required TResult orElse(),
  }) {
    if (over != null) {
      return over(
          gameWords, processedWords, lastShowWordIndex, guessed, passed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayProcessStateResumed value) resumed,
    required TResult Function(_PlayProcessStatePaused value) paused,
    required TResult Function(_PlayProcessStateOver value) over,
  }) {
    return over(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayProcessStateResumed value)? resumed,
    TResult? Function(_PlayProcessStatePaused value)? paused,
    TResult? Function(_PlayProcessStateOver value)? over,
  }) {
    return over?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayProcessStateResumed value)? resumed,
    TResult Function(_PlayProcessStatePaused value)? paused,
    TResult Function(_PlayProcessStateOver value)? over,
    required TResult orElse(),
  }) {
    if (over != null) {
      return over(this);
    }
    return orElse();
  }
}

abstract class _PlayProcessStateOver extends PlayProcessState {
  const factory _PlayProcessStateOver(
      {final List<String> gameWords,
      final Map<String, bool> processedWords,
      final int lastShowWordIndex,
      final int guessed,
      final int passed}) = _$PlayProcessStateOverImpl;
  const _PlayProcessStateOver._() : super._();

  @override
  List<String> get gameWords;
  @override
  Map<String, bool> get processedWords;
  @override
  int get lastShowWordIndex;
  @override
  int get guessed;
  @override
  int get passed;
  @override
  @JsonKey(ignore: true)
  _$$PlayProcessStateOverImplCopyWith<_$PlayProcessStateOverImpl>
      get copyWith => throw _privateConstructorUsedError;
}
