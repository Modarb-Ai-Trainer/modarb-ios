// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrainerState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() beforeWarming,
    required TResult Function() closingTraining,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforeWarming,
    TResult? Function()? closingTraining,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforeWarming,
    TResult Function()? closingTraining,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BeforeWarming<T> value) beforeWarming,
    required TResult Function(ClosingTraining<T> value) closingTraining,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BeforeWarming<T> value)? beforeWarming,
    TResult? Function(ClosingTraining<T> value)? closingTraining,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BeforeWarming<T> value)? beforeWarming,
    TResult Function(ClosingTraining<T> value)? closingTraining,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerStateCopyWith<T, $Res> {
  factory $TrainerStateCopyWith(
          TrainerState<T> value, $Res Function(TrainerState<T>) then) =
      _$TrainerStateCopyWithImpl<T, $Res, TrainerState<T>>;
}

/// @nodoc
class _$TrainerStateCopyWithImpl<T, $Res, $Val extends TrainerState<T>>
    implements $TrainerStateCopyWith<T, $Res> {
  _$TrainerStateCopyWithImpl(this._value, this._then);

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
    extends _$TrainerStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'TrainerState<$T>.initial()';
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
    required TResult Function() beforeWarming,
    required TResult Function() closingTraining,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforeWarming,
    TResult? Function()? closingTraining,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforeWarming,
    TResult Function()? closingTraining,
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
    required TResult Function(BeforeWarming<T> value) beforeWarming,
    required TResult Function(ClosingTraining<T> value) closingTraining,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BeforeWarming<T> value)? beforeWarming,
    TResult? Function(ClosingTraining<T> value)? closingTraining,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BeforeWarming<T> value)? beforeWarming,
    TResult Function(ClosingTraining<T> value)? closingTraining,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements TrainerState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$BeforeWarmingImplCopyWith<T, $Res> {
  factory _$$BeforeWarmingImplCopyWith(_$BeforeWarmingImpl<T> value,
          $Res Function(_$BeforeWarmingImpl<T>) then) =
      __$$BeforeWarmingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BeforeWarmingImplCopyWithImpl<T, $Res>
    extends _$TrainerStateCopyWithImpl<T, $Res, _$BeforeWarmingImpl<T>>
    implements _$$BeforeWarmingImplCopyWith<T, $Res> {
  __$$BeforeWarmingImplCopyWithImpl(_$BeforeWarmingImpl<T> _value,
      $Res Function(_$BeforeWarmingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BeforeWarmingImpl<T> implements BeforeWarming<T> {
  const _$BeforeWarmingImpl();

  @override
  String toString() {
    return 'TrainerState<$T>.beforeWarming()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BeforeWarmingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() beforeWarming,
    required TResult Function() closingTraining,
  }) {
    return beforeWarming();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforeWarming,
    TResult? Function()? closingTraining,
  }) {
    return beforeWarming?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforeWarming,
    TResult Function()? closingTraining,
    required TResult orElse(),
  }) {
    if (beforeWarming != null) {
      return beforeWarming();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BeforeWarming<T> value) beforeWarming,
    required TResult Function(ClosingTraining<T> value) closingTraining,
  }) {
    return beforeWarming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BeforeWarming<T> value)? beforeWarming,
    TResult? Function(ClosingTraining<T> value)? closingTraining,
  }) {
    return beforeWarming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BeforeWarming<T> value)? beforeWarming,
    TResult Function(ClosingTraining<T> value)? closingTraining,
    required TResult orElse(),
  }) {
    if (beforeWarming != null) {
      return beforeWarming(this);
    }
    return orElse();
  }
}

abstract class BeforeWarming<T> implements TrainerState<T> {
  const factory BeforeWarming() = _$BeforeWarmingImpl<T>;
}

/// @nodoc
abstract class _$$ClosingTrainingImplCopyWith<T, $Res> {
  factory _$$ClosingTrainingImplCopyWith(_$ClosingTrainingImpl<T> value,
          $Res Function(_$ClosingTrainingImpl<T>) then) =
      __$$ClosingTrainingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ClosingTrainingImplCopyWithImpl<T, $Res>
    extends _$TrainerStateCopyWithImpl<T, $Res, _$ClosingTrainingImpl<T>>
    implements _$$ClosingTrainingImplCopyWith<T, $Res> {
  __$$ClosingTrainingImplCopyWithImpl(_$ClosingTrainingImpl<T> _value,
      $Res Function(_$ClosingTrainingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClosingTrainingImpl<T> implements ClosingTraining<T> {
  const _$ClosingTrainingImpl();

  @override
  String toString() {
    return 'TrainerState<$T>.closingTraining()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClosingTrainingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() beforeWarming,
    required TResult Function() closingTraining,
  }) {
    return closingTraining();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforeWarming,
    TResult? Function()? closingTraining,
  }) {
    return closingTraining?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforeWarming,
    TResult Function()? closingTraining,
    required TResult orElse(),
  }) {
    if (closingTraining != null) {
      return closingTraining();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BeforeWarming<T> value) beforeWarming,
    required TResult Function(ClosingTraining<T> value) closingTraining,
  }) {
    return closingTraining(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BeforeWarming<T> value)? beforeWarming,
    TResult? Function(ClosingTraining<T> value)? closingTraining,
  }) {
    return closingTraining?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BeforeWarming<T> value)? beforeWarming,
    TResult Function(ClosingTraining<T> value)? closingTraining,
    required TResult orElse(),
  }) {
    if (closingTraining != null) {
      return closingTraining(this);
    }
    return orElse();
  }
}

abstract class ClosingTraining<T> implements TrainerState<T> {
  const factory ClosingTraining() = _$ClosingTrainingImpl<T>;
}
