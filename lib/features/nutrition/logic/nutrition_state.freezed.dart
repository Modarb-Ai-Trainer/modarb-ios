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
    required TResult Function() todayMealLoading,
    required TResult Function(TodayMealResponse? todayMealResponse)
        todayMealSuccess,
    required TResult Function() todayMealError,
    required TResult Function(String? newSelect) changeSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? todayIntakeLoading,
    TResult? Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult? Function()? todayIntakeError,
    TResult? Function()? todayMealLoading,
    TResult? Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult? Function()? todayMealError,
    TResult? Function(String? newSelect)? changeSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? todayIntakeLoading,
    TResult Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult Function()? todayIntakeError,
    TResult Function()? todayMealLoading,
    TResult Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult Function()? todayMealError,
    TResult Function(String? newSelect)? changeSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TodayIntakeLoading<T> value) todayIntakeLoading,
    required TResult Function(TodayIntakeSuccess<T> value) todayIntakeSuccess,
    required TResult Function(TodayIntakeError<T> value) todayIntakeError,
    required TResult Function(TodayMealLoading<T> value) todayMealLoading,
    required TResult Function(TodayMealSuccess<T> value) todayMealSuccess,
    required TResult Function(TodayMealError<T> value) todayMealError,
    required TResult Function(ChangeSelection<T> value) changeSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult? Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult? Function(TodayIntakeError<T> value)? todayIntakeError,
    TResult? Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult? Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult? Function(TodayMealError<T> value)? todayMealError,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult Function(TodayIntakeError<T> value)? todayIntakeError,
    TResult Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult Function(TodayMealError<T> value)? todayMealError,
    TResult Function(ChangeSelection<T> value)? changeSelection,
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
    required TResult Function() todayMealLoading,
    required TResult Function(TodayMealResponse? todayMealResponse)
        todayMealSuccess,
    required TResult Function() todayMealError,
    required TResult Function(String? newSelect) changeSelection,
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
    TResult? Function()? todayMealLoading,
    TResult? Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult? Function()? todayMealError,
    TResult? Function(String? newSelect)? changeSelection,
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
    TResult Function()? todayMealLoading,
    TResult Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult Function()? todayMealError,
    TResult Function(String? newSelect)? changeSelection,
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
    required TResult Function(TodayMealLoading<T> value) todayMealLoading,
    required TResult Function(TodayMealSuccess<T> value) todayMealSuccess,
    required TResult Function(TodayMealError<T> value) todayMealError,
    required TResult Function(ChangeSelection<T> value) changeSelection,
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
    TResult? Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult? Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult? Function(TodayMealError<T> value)? todayMealError,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
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
    TResult Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult Function(TodayMealError<T> value)? todayMealError,
    TResult Function(ChangeSelection<T> value)? changeSelection,
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
    required TResult Function() todayMealLoading,
    required TResult Function(TodayMealResponse? todayMealResponse)
        todayMealSuccess,
    required TResult Function() todayMealError,
    required TResult Function(String? newSelect) changeSelection,
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
    TResult? Function()? todayMealLoading,
    TResult? Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult? Function()? todayMealError,
    TResult? Function(String? newSelect)? changeSelection,
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
    TResult Function()? todayMealLoading,
    TResult Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult Function()? todayMealError,
    TResult Function(String? newSelect)? changeSelection,
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
    required TResult Function(TodayMealLoading<T> value) todayMealLoading,
    required TResult Function(TodayMealSuccess<T> value) todayMealSuccess,
    required TResult Function(TodayMealError<T> value) todayMealError,
    required TResult Function(ChangeSelection<T> value) changeSelection,
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
    TResult? Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult? Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult? Function(TodayMealError<T> value)? todayMealError,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
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
    TResult Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult Function(TodayMealError<T> value)? todayMealError,
    TResult Function(ChangeSelection<T> value)? changeSelection,
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
    required TResult Function() todayMealLoading,
    required TResult Function(TodayMealResponse? todayMealResponse)
        todayMealSuccess,
    required TResult Function() todayMealError,
    required TResult Function(String? newSelect) changeSelection,
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
    TResult? Function()? todayMealLoading,
    TResult? Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult? Function()? todayMealError,
    TResult? Function(String? newSelect)? changeSelection,
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
    TResult Function()? todayMealLoading,
    TResult Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult Function()? todayMealError,
    TResult Function(String? newSelect)? changeSelection,
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
    required TResult Function(TodayMealLoading<T> value) todayMealLoading,
    required TResult Function(TodayMealSuccess<T> value) todayMealSuccess,
    required TResult Function(TodayMealError<T> value) todayMealError,
    required TResult Function(ChangeSelection<T> value) changeSelection,
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
    TResult? Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult? Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult? Function(TodayMealError<T> value)? todayMealError,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
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
    TResult Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult Function(TodayMealError<T> value)? todayMealError,
    TResult Function(ChangeSelection<T> value)? changeSelection,
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
    required TResult Function() todayMealLoading,
    required TResult Function(TodayMealResponse? todayMealResponse)
        todayMealSuccess,
    required TResult Function() todayMealError,
    required TResult Function(String? newSelect) changeSelection,
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
    TResult? Function()? todayMealLoading,
    TResult? Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult? Function()? todayMealError,
    TResult? Function(String? newSelect)? changeSelection,
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
    TResult Function()? todayMealLoading,
    TResult Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult Function()? todayMealError,
    TResult Function(String? newSelect)? changeSelection,
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
    required TResult Function(TodayMealLoading<T> value) todayMealLoading,
    required TResult Function(TodayMealSuccess<T> value) todayMealSuccess,
    required TResult Function(TodayMealError<T> value) todayMealError,
    required TResult Function(ChangeSelection<T> value) changeSelection,
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
    TResult? Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult? Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult? Function(TodayMealError<T> value)? todayMealError,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
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
    TResult Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult Function(TodayMealError<T> value)? todayMealError,
    TResult Function(ChangeSelection<T> value)? changeSelection,
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

/// @nodoc
abstract class _$$TodayMealLoadingImplCopyWith<T, $Res> {
  factory _$$TodayMealLoadingImplCopyWith(_$TodayMealLoadingImpl<T> value,
          $Res Function(_$TodayMealLoadingImpl<T>) then) =
      __$$TodayMealLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TodayMealLoadingImplCopyWithImpl<T, $Res>
    extends _$NutritionStateCopyWithImpl<T, $Res, _$TodayMealLoadingImpl<T>>
    implements _$$TodayMealLoadingImplCopyWith<T, $Res> {
  __$$TodayMealLoadingImplCopyWithImpl(_$TodayMealLoadingImpl<T> _value,
      $Res Function(_$TodayMealLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodayMealLoadingImpl<T> implements TodayMealLoading<T> {
  const _$TodayMealLoadingImpl();

  @override
  String toString() {
    return 'NutritionState<$T>.todayMealLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayMealLoadingImpl<T>);
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
    required TResult Function() todayMealLoading,
    required TResult Function(TodayMealResponse? todayMealResponse)
        todayMealSuccess,
    required TResult Function() todayMealError,
    required TResult Function(String? newSelect) changeSelection,
  }) {
    return todayMealLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? todayIntakeLoading,
    TResult? Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult? Function()? todayIntakeError,
    TResult? Function()? todayMealLoading,
    TResult? Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult? Function()? todayMealError,
    TResult? Function(String? newSelect)? changeSelection,
  }) {
    return todayMealLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? todayIntakeLoading,
    TResult Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult Function()? todayIntakeError,
    TResult Function()? todayMealLoading,
    TResult Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult Function()? todayMealError,
    TResult Function(String? newSelect)? changeSelection,
    required TResult orElse(),
  }) {
    if (todayMealLoading != null) {
      return todayMealLoading();
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
    required TResult Function(TodayMealLoading<T> value) todayMealLoading,
    required TResult Function(TodayMealSuccess<T> value) todayMealSuccess,
    required TResult Function(TodayMealError<T> value) todayMealError,
    required TResult Function(ChangeSelection<T> value) changeSelection,
  }) {
    return todayMealLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult? Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult? Function(TodayIntakeError<T> value)? todayIntakeError,
    TResult? Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult? Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult? Function(TodayMealError<T> value)? todayMealError,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
  }) {
    return todayMealLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult Function(TodayIntakeError<T> value)? todayIntakeError,
    TResult Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult Function(TodayMealError<T> value)? todayMealError,
    TResult Function(ChangeSelection<T> value)? changeSelection,
    required TResult orElse(),
  }) {
    if (todayMealLoading != null) {
      return todayMealLoading(this);
    }
    return orElse();
  }
}

abstract class TodayMealLoading<T> implements NutritionState<T> {
  const factory TodayMealLoading() = _$TodayMealLoadingImpl<T>;
}

/// @nodoc
abstract class _$$TodayMealSuccessImplCopyWith<T, $Res> {
  factory _$$TodayMealSuccessImplCopyWith(_$TodayMealSuccessImpl<T> value,
          $Res Function(_$TodayMealSuccessImpl<T>) then) =
      __$$TodayMealSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({TodayMealResponse? todayMealResponse});
}

/// @nodoc
class __$$TodayMealSuccessImplCopyWithImpl<T, $Res>
    extends _$NutritionStateCopyWithImpl<T, $Res, _$TodayMealSuccessImpl<T>>
    implements _$$TodayMealSuccessImplCopyWith<T, $Res> {
  __$$TodayMealSuccessImplCopyWithImpl(_$TodayMealSuccessImpl<T> _value,
      $Res Function(_$TodayMealSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayMealResponse = freezed,
  }) {
    return _then(_$TodayMealSuccessImpl<T>(
      freezed == todayMealResponse
          ? _value.todayMealResponse
          : todayMealResponse // ignore: cast_nullable_to_non_nullable
              as TodayMealResponse?,
    ));
  }
}

/// @nodoc

class _$TodayMealSuccessImpl<T> implements TodayMealSuccess<T> {
  const _$TodayMealSuccessImpl(this.todayMealResponse);

  @override
  final TodayMealResponse? todayMealResponse;

  @override
  String toString() {
    return 'NutritionState<$T>.todayMealSuccess(todayMealResponse: $todayMealResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayMealSuccessImpl<T> &&
            (identical(other.todayMealResponse, todayMealResponse) ||
                other.todayMealResponse == todayMealResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todayMealResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodayMealSuccessImplCopyWith<T, _$TodayMealSuccessImpl<T>> get copyWith =>
      __$$TodayMealSuccessImplCopyWithImpl<T, _$TodayMealSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() todayIntakeLoading,
    required TResult Function(TodayIntakeResponse? todayIntakeResponse)
        todayIntakeSuccess,
    required TResult Function() todayIntakeError,
    required TResult Function() todayMealLoading,
    required TResult Function(TodayMealResponse? todayMealResponse)
        todayMealSuccess,
    required TResult Function() todayMealError,
    required TResult Function(String? newSelect) changeSelection,
  }) {
    return todayMealSuccess(todayMealResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? todayIntakeLoading,
    TResult? Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult? Function()? todayIntakeError,
    TResult? Function()? todayMealLoading,
    TResult? Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult? Function()? todayMealError,
    TResult? Function(String? newSelect)? changeSelection,
  }) {
    return todayMealSuccess?.call(todayMealResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? todayIntakeLoading,
    TResult Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult Function()? todayIntakeError,
    TResult Function()? todayMealLoading,
    TResult Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult Function()? todayMealError,
    TResult Function(String? newSelect)? changeSelection,
    required TResult orElse(),
  }) {
    if (todayMealSuccess != null) {
      return todayMealSuccess(todayMealResponse);
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
    required TResult Function(TodayMealLoading<T> value) todayMealLoading,
    required TResult Function(TodayMealSuccess<T> value) todayMealSuccess,
    required TResult Function(TodayMealError<T> value) todayMealError,
    required TResult Function(ChangeSelection<T> value) changeSelection,
  }) {
    return todayMealSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult? Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult? Function(TodayIntakeError<T> value)? todayIntakeError,
    TResult? Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult? Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult? Function(TodayMealError<T> value)? todayMealError,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
  }) {
    return todayMealSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult Function(TodayIntakeError<T> value)? todayIntakeError,
    TResult Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult Function(TodayMealError<T> value)? todayMealError,
    TResult Function(ChangeSelection<T> value)? changeSelection,
    required TResult orElse(),
  }) {
    if (todayMealSuccess != null) {
      return todayMealSuccess(this);
    }
    return orElse();
  }
}

abstract class TodayMealSuccess<T> implements NutritionState<T> {
  const factory TodayMealSuccess(final TodayMealResponse? todayMealResponse) =
      _$TodayMealSuccessImpl<T>;

  TodayMealResponse? get todayMealResponse;
  @JsonKey(ignore: true)
  _$$TodayMealSuccessImplCopyWith<T, _$TodayMealSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodayMealErrorImplCopyWith<T, $Res> {
  factory _$$TodayMealErrorImplCopyWith(_$TodayMealErrorImpl<T> value,
          $Res Function(_$TodayMealErrorImpl<T>) then) =
      __$$TodayMealErrorImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TodayMealErrorImplCopyWithImpl<T, $Res>
    extends _$NutritionStateCopyWithImpl<T, $Res, _$TodayMealErrorImpl<T>>
    implements _$$TodayMealErrorImplCopyWith<T, $Res> {
  __$$TodayMealErrorImplCopyWithImpl(_$TodayMealErrorImpl<T> _value,
      $Res Function(_$TodayMealErrorImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodayMealErrorImpl<T> implements TodayMealError<T> {
  const _$TodayMealErrorImpl();

  @override
  String toString() {
    return 'NutritionState<$T>.todayMealError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodayMealErrorImpl<T>);
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
    required TResult Function() todayMealLoading,
    required TResult Function(TodayMealResponse? todayMealResponse)
        todayMealSuccess,
    required TResult Function() todayMealError,
    required TResult Function(String? newSelect) changeSelection,
  }) {
    return todayMealError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? todayIntakeLoading,
    TResult? Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult? Function()? todayIntakeError,
    TResult? Function()? todayMealLoading,
    TResult? Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult? Function()? todayMealError,
    TResult? Function(String? newSelect)? changeSelection,
  }) {
    return todayMealError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? todayIntakeLoading,
    TResult Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult Function()? todayIntakeError,
    TResult Function()? todayMealLoading,
    TResult Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult Function()? todayMealError,
    TResult Function(String? newSelect)? changeSelection,
    required TResult orElse(),
  }) {
    if (todayMealError != null) {
      return todayMealError();
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
    required TResult Function(TodayMealLoading<T> value) todayMealLoading,
    required TResult Function(TodayMealSuccess<T> value) todayMealSuccess,
    required TResult Function(TodayMealError<T> value) todayMealError,
    required TResult Function(ChangeSelection<T> value) changeSelection,
  }) {
    return todayMealError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult? Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult? Function(TodayIntakeError<T> value)? todayIntakeError,
    TResult? Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult? Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult? Function(TodayMealError<T> value)? todayMealError,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
  }) {
    return todayMealError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult Function(TodayIntakeError<T> value)? todayIntakeError,
    TResult Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult Function(TodayMealError<T> value)? todayMealError,
    TResult Function(ChangeSelection<T> value)? changeSelection,
    required TResult orElse(),
  }) {
    if (todayMealError != null) {
      return todayMealError(this);
    }
    return orElse();
  }
}

abstract class TodayMealError<T> implements NutritionState<T> {
  const factory TodayMealError() = _$TodayMealErrorImpl<T>;
}

/// @nodoc
abstract class _$$ChangeSelectionImplCopyWith<T, $Res> {
  factory _$$ChangeSelectionImplCopyWith(_$ChangeSelectionImpl<T> value,
          $Res Function(_$ChangeSelectionImpl<T>) then) =
      __$$ChangeSelectionImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? newSelect});
}

/// @nodoc
class __$$ChangeSelectionImplCopyWithImpl<T, $Res>
    extends _$NutritionStateCopyWithImpl<T, $Res, _$ChangeSelectionImpl<T>>
    implements _$$ChangeSelectionImplCopyWith<T, $Res> {
  __$$ChangeSelectionImplCopyWithImpl(_$ChangeSelectionImpl<T> _value,
      $Res Function(_$ChangeSelectionImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newSelect = freezed,
  }) {
    return _then(_$ChangeSelectionImpl<T>(
      freezed == newSelect
          ? _value.newSelect
          : newSelect // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeSelectionImpl<T> implements ChangeSelection<T> {
  const _$ChangeSelectionImpl(this.newSelect);

  @override
  final String? newSelect;

  @override
  String toString() {
    return 'NutritionState<$T>.changeSelection(newSelect: $newSelect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectionImpl<T> &&
            (identical(other.newSelect, newSelect) ||
                other.newSelect == newSelect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newSelect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSelectionImplCopyWith<T, _$ChangeSelectionImpl<T>> get copyWith =>
      __$$ChangeSelectionImplCopyWithImpl<T, _$ChangeSelectionImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() todayIntakeLoading,
    required TResult Function(TodayIntakeResponse? todayIntakeResponse)
        todayIntakeSuccess,
    required TResult Function() todayIntakeError,
    required TResult Function() todayMealLoading,
    required TResult Function(TodayMealResponse? todayMealResponse)
        todayMealSuccess,
    required TResult Function() todayMealError,
    required TResult Function(String? newSelect) changeSelection,
  }) {
    return changeSelection(newSelect);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? todayIntakeLoading,
    TResult? Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult? Function()? todayIntakeError,
    TResult? Function()? todayMealLoading,
    TResult? Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult? Function()? todayMealError,
    TResult? Function(String? newSelect)? changeSelection,
  }) {
    return changeSelection?.call(newSelect);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? todayIntakeLoading,
    TResult Function(TodayIntakeResponse? todayIntakeResponse)?
        todayIntakeSuccess,
    TResult Function()? todayIntakeError,
    TResult Function()? todayMealLoading,
    TResult Function(TodayMealResponse? todayMealResponse)? todayMealSuccess,
    TResult Function()? todayMealError,
    TResult Function(String? newSelect)? changeSelection,
    required TResult orElse(),
  }) {
    if (changeSelection != null) {
      return changeSelection(newSelect);
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
    required TResult Function(TodayMealLoading<T> value) todayMealLoading,
    required TResult Function(TodayMealSuccess<T> value) todayMealSuccess,
    required TResult Function(TodayMealError<T> value) todayMealError,
    required TResult Function(ChangeSelection<T> value) changeSelection,
  }) {
    return changeSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult? Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult? Function(TodayIntakeError<T> value)? todayIntakeError,
    TResult? Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult? Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult? Function(TodayMealError<T> value)? todayMealError,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
  }) {
    return changeSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TodayIntakeLoading<T> value)? todayIntakeLoading,
    TResult Function(TodayIntakeSuccess<T> value)? todayIntakeSuccess,
    TResult Function(TodayIntakeError<T> value)? todayIntakeError,
    TResult Function(TodayMealLoading<T> value)? todayMealLoading,
    TResult Function(TodayMealSuccess<T> value)? todayMealSuccess,
    TResult Function(TodayMealError<T> value)? todayMealError,
    TResult Function(ChangeSelection<T> value)? changeSelection,
    required TResult orElse(),
  }) {
    if (changeSelection != null) {
      return changeSelection(this);
    }
    return orElse();
  }
}

abstract class ChangeSelection<T> implements NutritionState<T> {
  const factory ChangeSelection(final String? newSelect) =
      _$ChangeSelectionImpl<T>;

  String? get newSelect;
  @JsonKey(ignore: true)
  _$$ChangeSelectionImplCopyWith<T, _$ChangeSelectionImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
