// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result_response_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultResponseStateTearOff {
  const _$ResultResponseStateTearOff();

  ResultResponseSuccess<T> success<T>({required T data}) {
    return ResultResponseSuccess<T>(
      data: data,
    );
  }

  ResultResponseLoading<T> loading<T>() {
    return ResultResponseLoading<T>();
  }

  ResultResponseFailure<T> failure<T>({T? data, required AppError appError}) {
    return ResultResponseFailure<T>(
      data: data,
      appError: appError,
    );
  }
}

/// @nodoc
const $ResultResponseState = _$ResultResponseStateTearOff();

/// @nodoc
mixin _$ResultResponseState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() loading,
    required TResult Function(T? data, AppError appError) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? loading,
    TResult Function(T? data, AppError appError)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? loading,
    TResult Function(T? data, AppError appError)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultResponseSuccess<T> value) success,
    required TResult Function(ResultResponseLoading<T> value) loading,
    required TResult Function(ResultResponseFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultResponseSuccess<T> value)? success,
    TResult Function(ResultResponseLoading<T> value)? loading,
    TResult Function(ResultResponseFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultResponseSuccess<T> value)? success,
    TResult Function(ResultResponseLoading<T> value)? loading,
    TResult Function(ResultResponseFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultResponseStateCopyWith<T, $Res> {
  factory $ResultResponseStateCopyWith(ResultResponseState<T> value,
          $Res Function(ResultResponseState<T>) then) =
      _$ResultResponseStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResultResponseStateCopyWithImpl<T, $Res>
    implements $ResultResponseStateCopyWith<T, $Res> {
  _$ResultResponseStateCopyWithImpl(this._value, this._then);

  final ResultResponseState<T> _value;
  // ignore: unused_field
  final $Res Function(ResultResponseState<T>) _then;
}

/// @nodoc
abstract class $ResultResponseSuccessCopyWith<T, $Res> {
  factory $ResultResponseSuccessCopyWith(ResultResponseSuccess<T> value,
          $Res Function(ResultResponseSuccess<T>) then) =
      _$ResultResponseSuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$ResultResponseSuccessCopyWithImpl<T, $Res>
    extends _$ResultResponseStateCopyWithImpl<T, $Res>
    implements $ResultResponseSuccessCopyWith<T, $Res> {
  _$ResultResponseSuccessCopyWithImpl(ResultResponseSuccess<T> _value,
      $Res Function(ResultResponseSuccess<T>) _then)
      : super(_value, (v) => _then(v as ResultResponseSuccess<T>));

  @override
  ResultResponseSuccess<T> get _value =>
      super._value as ResultResponseSuccess<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(ResultResponseSuccess<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResultResponseSuccess<T> implements ResultResponseSuccess<T> {
  const _$ResultResponseSuccess({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'ResultResponseState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResultResponseSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $ResultResponseSuccessCopyWith<T, ResultResponseSuccess<T>> get copyWith =>
      _$ResultResponseSuccessCopyWithImpl<T, ResultResponseSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() loading,
    required TResult Function(T? data, AppError appError) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? loading,
    TResult Function(T? data, AppError appError)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? loading,
    TResult Function(T? data, AppError appError)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultResponseSuccess<T> value) success,
    required TResult Function(ResultResponseLoading<T> value) loading,
    required TResult Function(ResultResponseFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultResponseSuccess<T> value)? success,
    TResult Function(ResultResponseLoading<T> value)? loading,
    TResult Function(ResultResponseFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultResponseSuccess<T> value)? success,
    TResult Function(ResultResponseLoading<T> value)? loading,
    TResult Function(ResultResponseFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ResultResponseSuccess<T> implements ResultResponseState<T> {
  const factory ResultResponseSuccess({required T data}) =
      _$ResultResponseSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  $ResultResponseSuccessCopyWith<T, ResultResponseSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultResponseLoadingCopyWith<T, $Res> {
  factory $ResultResponseLoadingCopyWith(ResultResponseLoading<T> value,
          $Res Function(ResultResponseLoading<T>) then) =
      _$ResultResponseLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResultResponseLoadingCopyWithImpl<T, $Res>
    extends _$ResultResponseStateCopyWithImpl<T, $Res>
    implements $ResultResponseLoadingCopyWith<T, $Res> {
  _$ResultResponseLoadingCopyWithImpl(ResultResponseLoading<T> _value,
      $Res Function(ResultResponseLoading<T>) _then)
      : super(_value, (v) => _then(v as ResultResponseLoading<T>));

  @override
  ResultResponseLoading<T> get _value =>
      super._value as ResultResponseLoading<T>;
}

/// @nodoc

class _$ResultResponseLoading<T> implements ResultResponseLoading<T> {
  const _$ResultResponseLoading();

  @override
  String toString() {
    return 'ResultResponseState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResultResponseLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() loading,
    required TResult Function(T? data, AppError appError) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? loading,
    TResult Function(T? data, AppError appError)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? loading,
    TResult Function(T? data, AppError appError)? failure,
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
    required TResult Function(ResultResponseSuccess<T> value) success,
    required TResult Function(ResultResponseLoading<T> value) loading,
    required TResult Function(ResultResponseFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultResponseSuccess<T> value)? success,
    TResult Function(ResultResponseLoading<T> value)? loading,
    TResult Function(ResultResponseFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultResponseSuccess<T> value)? success,
    TResult Function(ResultResponseLoading<T> value)? loading,
    TResult Function(ResultResponseFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ResultResponseLoading<T> implements ResultResponseState<T> {
  const factory ResultResponseLoading() = _$ResultResponseLoading<T>;
}

/// @nodoc
abstract class $ResultResponseFailureCopyWith<T, $Res> {
  factory $ResultResponseFailureCopyWith(ResultResponseFailure<T> value,
          $Res Function(ResultResponseFailure<T>) then) =
      _$ResultResponseFailureCopyWithImpl<T, $Res>;
  $Res call({T? data, AppError appError});
}

/// @nodoc
class _$ResultResponseFailureCopyWithImpl<T, $Res>
    extends _$ResultResponseStateCopyWithImpl<T, $Res>
    implements $ResultResponseFailureCopyWith<T, $Res> {
  _$ResultResponseFailureCopyWithImpl(ResultResponseFailure<T> _value,
      $Res Function(ResultResponseFailure<T>) _then)
      : super(_value, (v) => _then(v as ResultResponseFailure<T>));

  @override
  ResultResponseFailure<T> get _value =>
      super._value as ResultResponseFailure<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? appError = freezed,
  }) {
    return _then(ResultResponseFailure<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      appError: appError == freezed
          ? _value.appError
          : appError // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$ResultResponseFailure<T> implements ResultResponseFailure<T> {
  const _$ResultResponseFailure({this.data, required this.appError});

  @override
  final T? data;
  @override
  final AppError appError;

  @override
  String toString() {
    return 'ResultResponseState<$T>.failure(data: $data, appError: $appError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResultResponseFailure<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.appError, appError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(appError));

  @JsonKey(ignore: true)
  @override
  $ResultResponseFailureCopyWith<T, ResultResponseFailure<T>> get copyWith =>
      _$ResultResponseFailureCopyWithImpl<T, ResultResponseFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() loading,
    required TResult Function(T? data, AppError appError) failure,
  }) {
    return failure(data, appError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? loading,
    TResult Function(T? data, AppError appError)? failure,
  }) {
    return failure?.call(data, appError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? loading,
    TResult Function(T? data, AppError appError)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(data, appError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultResponseSuccess<T> value) success,
    required TResult Function(ResultResponseLoading<T> value) loading,
    required TResult Function(ResultResponseFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResultResponseSuccess<T> value)? success,
    TResult Function(ResultResponseLoading<T> value)? loading,
    TResult Function(ResultResponseFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultResponseSuccess<T> value)? success,
    TResult Function(ResultResponseLoading<T> value)? loading,
    TResult Function(ResultResponseFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ResultResponseFailure<T> implements ResultResponseState<T> {
  const factory ResultResponseFailure({T? data, required AppError appError}) =
      _$ResultResponseFailure<T>;

  T? get data;
  AppError get appError;
  @JsonKey(ignore: true)
  $ResultResponseFailureCopyWith<T, ResultResponseFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
