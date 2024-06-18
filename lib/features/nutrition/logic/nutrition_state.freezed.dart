// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrition_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NutritionState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() todayIntakeLoading,
    required TResult Function(TodayIntakeResponse? todayIntakeResponse)
        todayIntakeSuccess,
    required TResult Function() todayIntakeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? todayIntakeLoading,
    TResult? Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult? Function()? todayIntakeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? todayIntakeLoading,
    TResult Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult Function()? todayIntakeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TodayIntakeLoading<T> value) todayIntakeLoading,
    required TResult Function(TodayIntakeSuccess<T> value) todayIntakeSuccess,
    required TResult Function(TodayIntakeError<T> value) todayIntakeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult? Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult? Function(TodayIntakeError<T> value)? todayIntakeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult Function(TodayIntakeError<T> value)? todayIntakeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionStateCopyWith<T, $Res> {
  factory $NutritionStateCopyWith(
          NutritionState<T> value, $Res Function(NutritionState<T>) then) =
      _$NutritionStateCopyWithImpl<T, $Res, NutritionState<T>>;
}

/// @nodoc
class _$NutritionStateCopyWithImpl<T, $Res, $Val extends NutritionState<T>>
    implements $NutritionStateCopyWith<T, $Res> {
  _$NutritionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$NutritionStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NutritionState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() todayIntakeLoading,
    required TResult Function(TodayIntakeResponse? todayIntakeResponse)
        todayIntakeSuccess,
    required TResult Function() todayIntakeError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? todayIntakeLoading,
    TResult? Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult? Function()? todayIntakeError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? todayIntakeLoading,
    TResult Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult Function()? todayIntakeError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TodayIntakeLoading<T> value) todayIntakeLoading,
    required TResult Function(TodayIntakeSuccess<T> value) todayIntakeSuccess,
    required TResult Function(TodayIntakeError<T> value) todayIntakeError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult? Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult? Function(TodayIntakeError<T> value)? todayIntakeError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult Function(TodayIntakeError<T> value)? todayIntakeError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements NutritionState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$TodayIntakeLoadingImplCopyWith<T, $Res> {
  factory _$$TodayIntakeLoadingImplCopyWith(_$TodayIntakeLoadingImpl<T> value,
          $Res Function(_$TodayIntakeLoadingImpl<T>) then) =
      __$$TodayIntakeLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TodayIntakeLoadingImplCopyWithImpl<T, $Res>
    extends _$NutritionStateCopyWithImpl<T, $Res, _$TodayIntakeLoadingImpl<T>>
    implements _$$TodayIntakeLoadingImplCopyWith<T, $Res> {
  __$$TodayIntakeLoadingImplCopyWithImpl(_$TodayIntakeLoadingImpl<T> _value,
      $Res Function(_$TodayIntakeLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodayIntakeLoadingImpl<T> implements TodayIntakeLoading<T> {
  const _$TodayIntakeLoadingImpl();

  @override
  String toString() {
    return 'NutritionState<$T>.todayIntakeLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayIntakeLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() todayIntakeLoading,
    required TResult Function(TodayIntakeResponse? todayIntakeResponse)
        todayIntakeSuccess,
    required TResult Function() todayIntakeError,
  }) {
    return todayIntakeLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? todayIntakeLoading,
    TResult? Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult? Function()? todayIntakeError,
  }) {
    return todayIntakeLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? todayIntakeLoading,
    TResult Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult Function()? todayIntakeError,
    required TResult orElse(),
  }) {
    if (todayIntakeLoading != null) {
      return todayIntakeLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TodayIntakeLoading<T> value) todayIntakeLoading,
    required TResult Function(TodayIntakeSuccess<T> value) todayIntakeSuccess,
    required TResult Function(TodayIntakeError<T> value) todayIntakeError,
  }) {
    return todayIntakeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult? Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult? Function(TodayIntakeError<T> value)? todayIntakeError,
  }) {
    return todayIntakeLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult Function(TodayIntakeError<T> value)? todayIntakeError,
    required TResult orElse(),
  }) {
    if (todayIntakeLoading != null) {
      return todayIntakeLoading(this);
    }
    return orElse();
  }
}

abstract class TodayIntakeLoading<T> implements NutritionState<T> {
  const factory TodayIntakeLoading() = _$TodayIntakeLoadingImpl<T>;
}

/// @nodoc
abstract class _$$TodayIntakeSuccessImplCopyWith<T, $Res> {
  factory _$$TodayIntakeSuccessImplCopyWith(_$TodayIntakeSuccessImpl<T> value,
          $Res Function(_$TodayIntakeSuccessImpl<T>) then) =
      __$$TodayIntakeSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({TodayIntakeResponse? todayIntakeResponse});
}

/// @nodoc
class __$$TodayIntakeSuccessImplCopyWithImpl<T, $Res>
    extends _$NutritionStateCopyWithImpl<T, $Res, _$TodayIntakeSuccessImpl<T>>
    implements _$$TodayIntakeSuccessImplCopyWith<T, $Res> {
  __$$TodayIntakeSuccessImplCopyWithImpl(_$TodayIntakeSuccessImpl<T> _value,
      $Res Function(_$TodayIntakeSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayIntakeResponse = freezed,
  }) {
    return _then(_$TodayIntakeSuccessImpl<T>(
      freezed == todayIntakeResponse
          ? _value.todayIntakeResponse
          : todayIntakeResponse // ignore: cast_nullable_to_non_nullable
              as TodayIntakeResponse?,
    ));
  }
}

/// @nodoc

class _$TodayIntakeSuccessImpl<T> implements TodayIntakeSuccess<T> {
  const _$TodayIntakeSuccessImpl(this.todayIntakeResponse);

  @override
  final TodayIntakeResponse? todayIntakeResponse;

  @override
  String toString() {
    return 'NutritionState<$T>.todayIntakeSuccess(todayIntakeResponse: $todayIntakeResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayIntakeSuccessImpl<T> &&
            (identical(other.todayIntakeResponse, todayIntakeResponse) ||
                other.todayIntakeResponse == todayIntakeResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todayIntakeResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodayIntakeSuccessImplCopyWith<T, _$TodayIntakeSuccessImpl<T>>
      get copyWith => __$$TodayIntakeSuccessImplCopyWithImpl<T,
          _$TodayIntakeSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() todayIntakeLoading,
    required TResult Function(TodayIntakeResponse? todayIntakeResponse)
        todayIntakeSuccess,
    required TResult Function() todayIntakeError,
  }) {
    return todayIntakeSuccess(todayIntakeResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? todayIntakeLoading,
    TResult? Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult? Function()? todayIntakeError,
  }) {
    return todayIntakeSuccess?.call(todayIntakeResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? todayIntakeLoading,
    TResult Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult Function()? todayIntakeError,
    required TResult orElse(),
  }) {
    if (todayIntakeSuccess != null) {
      return todayIntakeSuccess(todayIntakeResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TodayIntakeLoading<T> value) todayIntakeLoading,
    required TResult Function(TodayIntakeSuccess<T> value) todayIntakeSuccess,
    required TResult Function(TodayIntakeError<T> value) todayIntakeError,
  }) {
    return todayIntakeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult? Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult? Function(TodayIntakeError<T> value)? todayIntakeError,
  }) {
    return todayIntakeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult Function(TodayIntakeError<T> value)? todayIntakeError,
    required TResult orElse(),
  }) {
    if (todayIntakeSuccess != null) {
      return todayIntakeSuccess(this);
    }
    return orElse();
  }
}

abstract class TodayIntakeSuccess<T> implements NutritionState<T> {
  const factory TodayIntakeSuccess(
          final TodayIntakeResponse? todayIntakeResponse) =
      _$TodayIntakeSuccessImpl<T>;

  TodayIntakeResponse? get todayIntakeResponse;
  @JsonKey(ignore: true)
  _$$TodayIntakeSuccessImplCopyWith<T, _$TodayIntakeSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodayIntakeErrorImplCopyWith<T, $Res> {
  factory _$$TodayIntakeErrorImplCopyWith(_$TodayIntakeErrorImpl<T> value,
          $Res Function(_$TodayIntakeErrorImpl<T>) then) =
      __$$TodayIntakeErrorImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TodayIntakeErrorImplCopyWithImpl<T, $Res>
    extends _$NutritionStateCopyWithImpl<T, $Res, _$TodayIntakeErrorImpl<T>>
    implements _$$TodayIntakeErrorImplCopyWith<T, $Res> {
  __$$TodayIntakeErrorImplCopyWithImpl(_$TodayIntakeErrorImpl<T> _value,
      $Res Function(_$TodayIntakeErrorImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodayIntakeErrorImpl<T> implements TodayIntakeError<T> {
  const _$TodayIntakeErrorImpl();

  @override
  String toString() {
    return 'NutritionState<$T>.todayIntakeError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayIntakeErrorImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() todayIntakeLoading,
    required TResult Function(TodayIntakeResponse? todayIntakeResponse)
        todayIntakeSuccess,
    required TResult Function() todayIntakeError,
  }) {
    return todayIntakeError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? todayIntakeLoading,
    TResult? Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult? Function()? todayIntakeError,
  }) {
    return todayIntakeError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? todayIntakeLoading,
    TResult Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult Function()? todayIntakeError,
    required TResult orElse(),
  }) {
    if (todayIntakeError != null) {
      return todayIntakeError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TodayIntakeLoading<T> value) todayIntakeLoading,
    required TResult Function(TodayIntakeSuccess<T> value) todayIntakeSuccess,
    required TResult Function(TodayIntakeError<T> value) todayIntakeError,
  }) {
    return todayIntakeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult? Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult? Function(TodayIntakeError<T> value)? todayIntakeError,
  }) {
    return todayIntakeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult Function(TodayIntakeError<T> value)? todayIntakeError,
    required TResult orElse(),
  }) {
    if (todayIntakeError != null) {
      return todayIntakeError(this);
    }
    return orElse();
  }
}

abstract class TodayIntakeError<T> implements NutritionState<T> {
  const factory TodayIntakeError() = _$TodayIntakeErrorImpl<T>;
}
