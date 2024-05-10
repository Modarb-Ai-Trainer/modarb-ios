// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) tabChanged,
    required TResult Function() homeLoading,
    required TResult Function(HomeResponse homeResponse) homeSuccess,
    required TResult Function() homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? tabChanged,
    TResult? Function()? homeLoading,
    TResult? Function(HomeResponse homeResponse)? homeSuccess,
    TResult? Function()? homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? tabChanged,
    TResult Function()? homeLoading,
    TResult Function(HomeResponse homeResponse)? homeSuccess,
    TResult Function()? homeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TabChanged<T> value) tabChanged,
    required TResult Function(HomeLoading<T> value) homeLoading,
    required TResult Function(HomeSuccess<T> value) homeSuccess,
    required TResult Function(HomeError<T> value) homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TabChanged<T> value)? tabChanged,
    TResult? Function(HomeLoading<T> value)? homeLoading,
    TResult? Function(HomeSuccess<T> value)? homeSuccess,
    TResult? Function(HomeError<T> value)? homeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TabChanged<T> value)? tabChanged,
    TResult Function(HomeLoading<T> value)? homeLoading,
    TResult Function(HomeSuccess<T> value)? homeSuccess,
    TResult Function(HomeError<T> value)? homeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
    extends _$HomeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'HomeState<$T>.initial()';
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
    required TResult Function(int index) tabChanged,
    required TResult Function() homeLoading,
    required TResult Function(HomeResponse homeResponse) homeSuccess,
    required TResult Function() homeError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? tabChanged,
    TResult? Function()? homeLoading,
    TResult? Function(HomeResponse homeResponse)? homeSuccess,
    TResult? Function()? homeError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? tabChanged,
    TResult Function()? homeLoading,
    TResult Function(HomeResponse homeResponse)? homeSuccess,
    TResult Function()? homeError,
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
    required TResult Function(TabChanged<T> value) tabChanged,
    required TResult Function(HomeLoading<T> value) homeLoading,
    required TResult Function(HomeSuccess<T> value) homeSuccess,
    required TResult Function(HomeError<T> value) homeError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TabChanged<T> value)? tabChanged,
    TResult? Function(HomeLoading<T> value)? homeLoading,
    TResult? Function(HomeSuccess<T> value)? homeSuccess,
    TResult? Function(HomeError<T> value)? homeError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TabChanged<T> value)? tabChanged,
    TResult Function(HomeLoading<T> value)? homeLoading,
    TResult Function(HomeSuccess<T> value)? homeSuccess,
    TResult Function(HomeError<T> value)? homeError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HomeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$TabChangedImplCopyWith<T, $Res> {
  factory _$$TabChangedImplCopyWith(
          _$TabChangedImpl<T> value, $Res Function(_$TabChangedImpl<T>) then) =
      __$$TabChangedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$TabChangedImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$TabChangedImpl<T>>
    implements _$$TabChangedImplCopyWith<T, $Res> {
  __$$TabChangedImplCopyWithImpl(
      _$TabChangedImpl<T> _value, $Res Function(_$TabChangedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$TabChangedImpl<T>(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TabChangedImpl<T> implements TabChanged<T> {
  const _$TabChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeState<$T>.tabChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabChangedImpl<T> &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabChangedImplCopyWith<T, _$TabChangedImpl<T>> get copyWith =>
      __$$TabChangedImplCopyWithImpl<T, _$TabChangedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) tabChanged,
    required TResult Function() homeLoading,
    required TResult Function(HomeResponse homeResponse) homeSuccess,
    required TResult Function() homeError,
  }) {
    return tabChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? tabChanged,
    TResult? Function()? homeLoading,
    TResult? Function(HomeResponse homeResponse)? homeSuccess,
    TResult? Function()? homeError,
  }) {
    return tabChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? tabChanged,
    TResult Function()? homeLoading,
    TResult Function(HomeResponse homeResponse)? homeSuccess,
    TResult Function()? homeError,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TabChanged<T> value) tabChanged,
    required TResult Function(HomeLoading<T> value) homeLoading,
    required TResult Function(HomeSuccess<T> value) homeSuccess,
    required TResult Function(HomeError<T> value) homeError,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TabChanged<T> value)? tabChanged,
    TResult? Function(HomeLoading<T> value)? homeLoading,
    TResult? Function(HomeSuccess<T> value)? homeSuccess,
    TResult? Function(HomeError<T> value)? homeError,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TabChanged<T> value)? tabChanged,
    TResult Function(HomeLoading<T> value)? homeLoading,
    TResult Function(HomeSuccess<T> value)? homeSuccess,
    TResult Function(HomeError<T> value)? homeError,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class TabChanged<T> implements HomeState<T> {
  const factory TabChanged(final int index) = _$TabChangedImpl<T>;

  int get index;
  @JsonKey(ignore: true)
  _$$TabChangedImplCopyWith<T, _$TabChangedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeLoadingImplCopyWith<T, $Res> {
  factory _$$HomeLoadingImplCopyWith(_$HomeLoadingImpl<T> value,
          $Res Function(_$HomeLoadingImpl<T>) then) =
      __$$HomeLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$HomeLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeLoadingImpl<T>>
    implements _$$HomeLoadingImplCopyWith<T, $Res> {
  __$$HomeLoadingImplCopyWithImpl(
      _$HomeLoadingImpl<T> _value, $Res Function(_$HomeLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadingImpl<T> implements HomeLoading<T> {
  const _$HomeLoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.homeLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) tabChanged,
    required TResult Function() homeLoading,
    required TResult Function(HomeResponse homeResponse) homeSuccess,
    required TResult Function() homeError,
  }) {
    return homeLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? tabChanged,
    TResult? Function()? homeLoading,
    TResult? Function(HomeResponse homeResponse)? homeSuccess,
    TResult? Function()? homeError,
  }) {
    return homeLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? tabChanged,
    TResult Function()? homeLoading,
    TResult Function(HomeResponse homeResponse)? homeSuccess,
    TResult Function()? homeError,
    required TResult orElse(),
  }) {
    if (homeLoading != null) {
      return homeLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TabChanged<T> value) tabChanged,
    required TResult Function(HomeLoading<T> value) homeLoading,
    required TResult Function(HomeSuccess<T> value) homeSuccess,
    required TResult Function(HomeError<T> value) homeError,
  }) {
    return homeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TabChanged<T> value)? tabChanged,
    TResult? Function(HomeLoading<T> value)? homeLoading,
    TResult? Function(HomeSuccess<T> value)? homeSuccess,
    TResult? Function(HomeError<T> value)? homeError,
  }) {
    return homeLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TabChanged<T> value)? tabChanged,
    TResult Function(HomeLoading<T> value)? homeLoading,
    TResult Function(HomeSuccess<T> value)? homeSuccess,
    TResult Function(HomeError<T> value)? homeError,
    required TResult orElse(),
  }) {
    if (homeLoading != null) {
      return homeLoading(this);
    }
    return orElse();
  }
}

abstract class HomeLoading<T> implements HomeState<T> {
  const factory HomeLoading() = _$HomeLoadingImpl<T>;
}

/// @nodoc
abstract class _$$HomeSuccessImplCopyWith<T, $Res> {
  factory _$$HomeSuccessImplCopyWith(_$HomeSuccessImpl<T> value,
          $Res Function(_$HomeSuccessImpl<T>) then) =
      __$$HomeSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({HomeResponse homeResponse});
}

/// @nodoc
class __$$HomeSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeSuccessImpl<T>>
    implements _$$HomeSuccessImplCopyWith<T, $Res> {
  __$$HomeSuccessImplCopyWithImpl(
      _$HomeSuccessImpl<T> _value, $Res Function(_$HomeSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeResponse = null,
  }) {
    return _then(_$HomeSuccessImpl<T>(
      null == homeResponse
          ? _value.homeResponse
          : homeResponse // ignore: cast_nullable_to_non_nullable
              as HomeResponse,
    ));
  }
}

/// @nodoc

class _$HomeSuccessImpl<T> implements HomeSuccess<T> {
  const _$HomeSuccessImpl(this.homeResponse);

  @override
  final HomeResponse homeResponse;

  @override
  String toString() {
    return 'HomeState<$T>.homeSuccess(homeResponse: $homeResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSuccessImpl<T> &&
            (identical(other.homeResponse, homeResponse) ||
                other.homeResponse == homeResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSuccessImplCopyWith<T, _$HomeSuccessImpl<T>> get copyWith =>
      __$$HomeSuccessImplCopyWithImpl<T, _$HomeSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) tabChanged,
    required TResult Function() homeLoading,
    required TResult Function(HomeResponse homeResponse) homeSuccess,
    required TResult Function() homeError,
  }) {
    return homeSuccess(homeResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? tabChanged,
    TResult? Function()? homeLoading,
    TResult? Function(HomeResponse homeResponse)? homeSuccess,
    TResult? Function()? homeError,
  }) {
    return homeSuccess?.call(homeResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? tabChanged,
    TResult Function()? homeLoading,
    TResult Function(HomeResponse homeResponse)? homeSuccess,
    TResult Function()? homeError,
    required TResult orElse(),
  }) {
    if (homeSuccess != null) {
      return homeSuccess(homeResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TabChanged<T> value) tabChanged,
    required TResult Function(HomeLoading<T> value) homeLoading,
    required TResult Function(HomeSuccess<T> value) homeSuccess,
    required TResult Function(HomeError<T> value) homeError,
  }) {
    return homeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TabChanged<T> value)? tabChanged,
    TResult? Function(HomeLoading<T> value)? homeLoading,
    TResult? Function(HomeSuccess<T> value)? homeSuccess,
    TResult? Function(HomeError<T> value)? homeError,
  }) {
    return homeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TabChanged<T> value)? tabChanged,
    TResult Function(HomeLoading<T> value)? homeLoading,
    TResult Function(HomeSuccess<T> value)? homeSuccess,
    TResult Function(HomeError<T> value)? homeError,
    required TResult orElse(),
  }) {
    if (homeSuccess != null) {
      return homeSuccess(this);
    }
    return orElse();
  }
}

abstract class HomeSuccess<T> implements HomeState<T> {
  const factory HomeSuccess(final HomeResponse homeResponse) =
      _$HomeSuccessImpl<T>;

  HomeResponse get homeResponse;
  @JsonKey(ignore: true)
  _$$HomeSuccessImplCopyWith<T, _$HomeSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeErrorImplCopyWith<T, $Res> {
  factory _$$HomeErrorImplCopyWith(
          _$HomeErrorImpl<T> value, $Res Function(_$HomeErrorImpl<T>) then) =
      __$$HomeErrorImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$HomeErrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeErrorImpl<T>>
    implements _$$HomeErrorImplCopyWith<T, $Res> {
  __$$HomeErrorImplCopyWithImpl(
      _$HomeErrorImpl<T> _value, $Res Function(_$HomeErrorImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeErrorImpl<T> implements HomeError<T> {
  const _$HomeErrorImpl();

  @override
  String toString() {
    return 'HomeState<$T>.homeError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeErrorImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) tabChanged,
    required TResult Function() homeLoading,
    required TResult Function(HomeResponse homeResponse) homeSuccess,
    required TResult Function() homeError,
  }) {
    return homeError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? tabChanged,
    TResult? Function()? homeLoading,
    TResult? Function(HomeResponse homeResponse)? homeSuccess,
    TResult? Function()? homeError,
  }) {
    return homeError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? tabChanged,
    TResult Function()? homeLoading,
    TResult Function(HomeResponse homeResponse)? homeSuccess,
    TResult Function()? homeError,
    required TResult orElse(),
  }) {
    if (homeError != null) {
      return homeError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TabChanged<T> value) tabChanged,
    required TResult Function(HomeLoading<T> value) homeLoading,
    required TResult Function(HomeSuccess<T> value) homeSuccess,
    required TResult Function(HomeError<T> value) homeError,
  }) {
    return homeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TabChanged<T> value)? tabChanged,
    TResult? Function(HomeLoading<T> value)? homeLoading,
    TResult? Function(HomeSuccess<T> value)? homeSuccess,
    TResult? Function(HomeError<T> value)? homeError,
  }) {
    return homeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TabChanged<T> value)? tabChanged,
    TResult Function(HomeLoading<T> value)? homeLoading,
    TResult Function(HomeSuccess<T> value)? homeSuccess,
    TResult Function(HomeError<T> value)? homeError,
    required TResult orElse(),
  }) {
    if (homeError != null) {
      return homeError(this);
    }
    return orElse();
  }
}

abstract class HomeError<T> implements HomeState<T> {
  const factory HomeError() = _$HomeErrorImpl<T>;
}
