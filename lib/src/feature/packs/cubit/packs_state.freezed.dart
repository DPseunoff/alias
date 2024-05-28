// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PacksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PackData> packs) success,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PackData> packs)? success,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PackData> packs)? success,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PacksStateSuccess value) success,
    required TResult Function(_PacksStateLoading value) loading,
    required TResult Function(_PacksStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PacksStateSuccess value)? success,
    TResult? Function(_PacksStateLoading value)? loading,
    TResult? Function(_PacksStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PacksStateSuccess value)? success,
    TResult Function(_PacksStateLoading value)? loading,
    TResult Function(_PacksStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PacksStateCopyWith<$Res> {
  factory $PacksStateCopyWith(
          PacksState value, $Res Function(PacksState) then) =
      _$PacksStateCopyWithImpl<$Res, PacksState>;
}

/// @nodoc
class _$PacksStateCopyWithImpl<$Res, $Val extends PacksState>
    implements $PacksStateCopyWith<$Res> {
  _$PacksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PacksStateSuccessImplCopyWith<$Res> {
  factory _$$PacksStateSuccessImplCopyWith(_$PacksStateSuccessImpl value,
          $Res Function(_$PacksStateSuccessImpl) then) =
      __$$PacksStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PackData> packs});
}

/// @nodoc
class __$$PacksStateSuccessImplCopyWithImpl<$Res>
    extends _$PacksStateCopyWithImpl<$Res, _$PacksStateSuccessImpl>
    implements _$$PacksStateSuccessImplCopyWith<$Res> {
  __$$PacksStateSuccessImplCopyWithImpl(_$PacksStateSuccessImpl _value,
      $Res Function(_$PacksStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packs = null,
  }) {
    return _then(_$PacksStateSuccessImpl(
      packs: null == packs
          ? _value._packs
          : packs // ignore: cast_nullable_to_non_nullable
              as List<PackData>,
    ));
  }
}

/// @nodoc

class _$PacksStateSuccessImpl implements _PacksStateSuccess {
  const _$PacksStateSuccessImpl({required final List<PackData> packs})
      : _packs = packs;

  final List<PackData> _packs;
  @override
  List<PackData> get packs {
    if (_packs is EqualUnmodifiableListView) return _packs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packs);
  }

  @override
  String toString() {
    return 'PacksState.success(packs: $packs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PacksStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._packs, _packs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_packs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PacksStateSuccessImplCopyWith<_$PacksStateSuccessImpl> get copyWith =>
      __$$PacksStateSuccessImplCopyWithImpl<_$PacksStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PackData> packs) success,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return success(packs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PackData> packs)? success,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return success?.call(packs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PackData> packs)? success,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(packs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PacksStateSuccess value) success,
    required TResult Function(_PacksStateLoading value) loading,
    required TResult Function(_PacksStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PacksStateSuccess value)? success,
    TResult? Function(_PacksStateLoading value)? loading,
    TResult? Function(_PacksStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PacksStateSuccess value)? success,
    TResult Function(_PacksStateLoading value)? loading,
    TResult Function(_PacksStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PacksStateSuccess implements PacksState {
  const factory _PacksStateSuccess({required final List<PackData> packs}) =
      _$PacksStateSuccessImpl;

  List<PackData> get packs;
  @JsonKey(ignore: true)
  _$$PacksStateSuccessImplCopyWith<_$PacksStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PacksStateLoadingImplCopyWith<$Res> {
  factory _$$PacksStateLoadingImplCopyWith(_$PacksStateLoadingImpl value,
          $Res Function(_$PacksStateLoadingImpl) then) =
      __$$PacksStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PacksStateLoadingImplCopyWithImpl<$Res>
    extends _$PacksStateCopyWithImpl<$Res, _$PacksStateLoadingImpl>
    implements _$$PacksStateLoadingImplCopyWith<$Res> {
  __$$PacksStateLoadingImplCopyWithImpl(_$PacksStateLoadingImpl _value,
      $Res Function(_$PacksStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PacksStateLoadingImpl implements _PacksStateLoading {
  const _$PacksStateLoadingImpl();

  @override
  String toString() {
    return 'PacksState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PacksStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PackData> packs) success,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PackData> packs)? success,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PackData> packs)? success,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PacksStateSuccess value) success,
    required TResult Function(_PacksStateLoading value) loading,
    required TResult Function(_PacksStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PacksStateSuccess value)? success,
    TResult? Function(_PacksStateLoading value)? loading,
    TResult? Function(_PacksStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PacksStateSuccess value)? success,
    TResult Function(_PacksStateLoading value)? loading,
    TResult Function(_PacksStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PacksStateLoading implements PacksState {
  const factory _PacksStateLoading() = _$PacksStateLoadingImpl;
}

/// @nodoc
abstract class _$$PacksStateErrorImplCopyWith<$Res> {
  factory _$$PacksStateErrorImplCopyWith(_$PacksStateErrorImpl value,
          $Res Function(_$PacksStateErrorImpl) then) =
      __$$PacksStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PacksStateErrorImplCopyWithImpl<$Res>
    extends _$PacksStateCopyWithImpl<$Res, _$PacksStateErrorImpl>
    implements _$$PacksStateErrorImplCopyWith<$Res> {
  __$$PacksStateErrorImplCopyWithImpl(
      _$PacksStateErrorImpl _value, $Res Function(_$PacksStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PacksStateErrorImpl implements _PacksStateError {
  const _$PacksStateErrorImpl();

  @override
  String toString() {
    return 'PacksState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PacksStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PackData> packs) success,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PackData> packs)? success,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PackData> packs)? success,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PacksStateSuccess value) success,
    required TResult Function(_PacksStateLoading value) loading,
    required TResult Function(_PacksStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PacksStateSuccess value)? success,
    TResult? Function(_PacksStateLoading value)? loading,
    TResult? Function(_PacksStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PacksStateSuccess value)? success,
    TResult Function(_PacksStateLoading value)? loading,
    TResult Function(_PacksStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PacksStateError implements PacksState {
  const factory _PacksStateError() = _$PacksStateErrorImpl;
}
