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
    required TResult Function(int savedCounter) counterChange,
    required TResult Function(int newCounter) counterChangeOfWarming,
    required TResult Function() warmingFinished,
    required TResult Function() closingTraining,
    required TResult Function(String? newSelect) changeSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforeWarming,
    TResult? Function(int savedCounter)? counterChange,
    TResult? Function(int newCounter)? counterChangeOfWarming,
    TResult? Function()? warmingFinished,
    TResult? Function()? closingTraining,
    TResult? Function(String? newSelect)? changeSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforeWarming,
    TResult Function(int savedCounter)? counterChange,
    TResult Function(int newCounter)? counterChangeOfWarming,
    TResult Function()? warmingFinished,
    TResult Function()? closingTraining,
    TResult Function(String? newSelect)? changeSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BeforeWarming<T> value) beforeWarming,
    required TResult Function(CounterChange<T> value) counterChange,
    required TResult Function(CounterChangeOfWarming<T> value)
        counterChangeOfWarming,
    required TResult Function(WarmingFinished<T> value) warmingFinished,
    required TResult Function(ClosingTraining<T> value) closingTraining,
    required TResult Function(ChangeSelection<T> value) changeSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BeforeWarming<T> value)? beforeWarming,
    TResult? Function(CounterChange<T> value)? counterChange,
    TResult? Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult? Function(WarmingFinished<T> value)? warmingFinished,
    TResult? Function(ClosingTraining<T> value)? closingTraining,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BeforeWarming<T> value)? beforeWarming,
    TResult Function(CounterChange<T> value)? counterChange,
    TResult Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult Function(WarmingFinished<T> value)? warmingFinished,
    TResult Function(ClosingTraining<T> value)? closingTraining,
    TResult Function(ChangeSelection<T> value)? changeSelection,
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
    required TResult Function(int savedCounter) counterChange,
    required TResult Function(int newCounter) counterChangeOfWarming,
    required TResult Function() warmingFinished,
    required TResult Function() closingTraining,
    required TResult Function(String? newSelect) changeSelection,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforeWarming,
    TResult? Function(int savedCounter)? counterChange,
    TResult? Function(int newCounter)? counterChangeOfWarming,
    TResult? Function()? warmingFinished,
    TResult? Function()? closingTraining,
    TResult? Function(String? newSelect)? changeSelection,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforeWarming,
    TResult Function(int savedCounter)? counterChange,
    TResult Function(int newCounter)? counterChangeOfWarming,
    TResult Function()? warmingFinished,
    TResult Function()? closingTraining,
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
    required TResult Function(BeforeWarming<T> value) beforeWarming,
    required TResult Function(CounterChange<T> value) counterChange,
    required TResult Function(CounterChangeOfWarming<T> value)
        counterChangeOfWarming,
    required TResult Function(WarmingFinished<T> value) warmingFinished,
    required TResult Function(ClosingTraining<T> value) closingTraining,
    required TResult Function(ChangeSelection<T> value) changeSelection,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BeforeWarming<T> value)? beforeWarming,
    TResult? Function(CounterChange<T> value)? counterChange,
    TResult? Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult? Function(WarmingFinished<T> value)? warmingFinished,
    TResult? Function(ClosingTraining<T> value)? closingTraining,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BeforeWarming<T> value)? beforeWarming,
    TResult Function(CounterChange<T> value)? counterChange,
    TResult Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult Function(WarmingFinished<T> value)? warmingFinished,
    TResult Function(ClosingTraining<T> value)? closingTraining,
    TResult Function(ChangeSelection<T> value)? changeSelection,
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
    required TResult Function(int savedCounter) counterChange,
    required TResult Function(int newCounter) counterChangeOfWarming,
    required TResult Function() warmingFinished,
    required TResult Function() closingTraining,
    required TResult Function(String? newSelect) changeSelection,
  }) {
    return beforeWarming();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforeWarming,
    TResult? Function(int savedCounter)? counterChange,
    TResult? Function(int newCounter)? counterChangeOfWarming,
    TResult? Function()? warmingFinished,
    TResult? Function()? closingTraining,
    TResult? Function(String? newSelect)? changeSelection,
  }) {
    return beforeWarming?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforeWarming,
    TResult Function(int savedCounter)? counterChange,
    TResult Function(int newCounter)? counterChangeOfWarming,
    TResult Function()? warmingFinished,
    TResult Function()? closingTraining,
    TResult Function(String? newSelect)? changeSelection,
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
    required TResult Function(CounterChange<T> value) counterChange,
    required TResult Function(CounterChangeOfWarming<T> value)
        counterChangeOfWarming,
    required TResult Function(WarmingFinished<T> value) warmingFinished,
    required TResult Function(ClosingTraining<T> value) closingTraining,
    required TResult Function(ChangeSelection<T> value) changeSelection,
  }) {
    return beforeWarming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BeforeWarming<T> value)? beforeWarming,
    TResult? Function(CounterChange<T> value)? counterChange,
    TResult? Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult? Function(WarmingFinished<T> value)? warmingFinished,
    TResult? Function(ClosingTraining<T> value)? closingTraining,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
  }) {
    return beforeWarming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BeforeWarming<T> value)? beforeWarming,
    TResult Function(CounterChange<T> value)? counterChange,
    TResult Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult Function(WarmingFinished<T> value)? warmingFinished,
    TResult Function(ClosingTraining<T> value)? closingTraining,
    TResult Function(ChangeSelection<T> value)? changeSelection,
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
abstract class _$$CounterChangeImplCopyWith<T, $Res> {
  factory _$$CounterChangeImplCopyWith(_$CounterChangeImpl<T> value,
          $Res Function(_$CounterChangeImpl<T>) then) =
      __$$CounterChangeImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int savedCounter});
}

/// @nodoc
class __$$CounterChangeImplCopyWithImpl<T, $Res>
    extends _$TrainerStateCopyWithImpl<T, $Res, _$CounterChangeImpl<T>>
    implements _$$CounterChangeImplCopyWith<T, $Res> {
  __$$CounterChangeImplCopyWithImpl(_$CounterChangeImpl<T> _value,
      $Res Function(_$CounterChangeImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedCounter = null,
  }) {
    return _then(_$CounterChangeImpl<T>(
      savedCounter: null == savedCounter
          ? _value.savedCounter
          : savedCounter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CounterChangeImpl<T> implements CounterChange<T> {
  const _$CounterChangeImpl({required this.savedCounter});

  @override
  final int savedCounter;

  @override
  String toString() {
    return 'TrainerState<$T>.counterChange(savedCounter: $savedCounter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterChangeImpl<T> &&
            (identical(other.savedCounter, savedCounter) ||
                other.savedCounter == savedCounter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, savedCounter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterChangeImplCopyWith<T, _$CounterChangeImpl<T>> get copyWith =>
      __$$CounterChangeImplCopyWithImpl<T, _$CounterChangeImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() beforeWarming,
    required TResult Function(int savedCounter) counterChange,
    required TResult Function(int newCounter) counterChangeOfWarming,
    required TResult Function() warmingFinished,
    required TResult Function() closingTraining,
    required TResult Function(String? newSelect) changeSelection,
  }) {
    return counterChange(savedCounter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforeWarming,
    TResult? Function(int savedCounter)? counterChange,
    TResult? Function(int newCounter)? counterChangeOfWarming,
    TResult? Function()? warmingFinished,
    TResult? Function()? closingTraining,
    TResult? Function(String? newSelect)? changeSelection,
  }) {
    return counterChange?.call(savedCounter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforeWarming,
    TResult Function(int savedCounter)? counterChange,
    TResult Function(int newCounter)? counterChangeOfWarming,
    TResult Function()? warmingFinished,
    TResult Function()? closingTraining,
    TResult Function(String? newSelect)? changeSelection,
    required TResult orElse(),
  }) {
    if (counterChange != null) {
      return counterChange(savedCounter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BeforeWarming<T> value) beforeWarming,
    required TResult Function(CounterChange<T> value) counterChange,
    required TResult Function(CounterChangeOfWarming<T> value)
        counterChangeOfWarming,
    required TResult Function(WarmingFinished<T> value) warmingFinished,
    required TResult Function(ClosingTraining<T> value) closingTraining,
    required TResult Function(ChangeSelection<T> value) changeSelection,
  }) {
    return counterChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BeforeWarming<T> value)? beforeWarming,
    TResult? Function(CounterChange<T> value)? counterChange,
    TResult? Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult? Function(WarmingFinished<T> value)? warmingFinished,
    TResult? Function(ClosingTraining<T> value)? closingTraining,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
  }) {
    return counterChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BeforeWarming<T> value)? beforeWarming,
    TResult Function(CounterChange<T> value)? counterChange,
    TResult Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult Function(WarmingFinished<T> value)? warmingFinished,
    TResult Function(ClosingTraining<T> value)? closingTraining,
    TResult Function(ChangeSelection<T> value)? changeSelection,
    required TResult orElse(),
  }) {
    if (counterChange != null) {
      return counterChange(this);
    }
    return orElse();
  }
}

abstract class CounterChange<T> implements TrainerState<T> {
  const factory CounterChange({required final int savedCounter}) =
      _$CounterChangeImpl<T>;

  int get savedCounter;
  @JsonKey(ignore: true)
  _$$CounterChangeImplCopyWith<T, _$CounterChangeImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CounterChangeOfWarmingImplCopyWith<T, $Res> {
  factory _$$CounterChangeOfWarmingImplCopyWith(
          _$CounterChangeOfWarmingImpl<T> value,
          $Res Function(_$CounterChangeOfWarmingImpl<T>) then) =
      __$$CounterChangeOfWarmingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int newCounter});
}

/// @nodoc
class __$$CounterChangeOfWarmingImplCopyWithImpl<T, $Res>
    extends _$TrainerStateCopyWithImpl<T, $Res, _$CounterChangeOfWarmingImpl<T>>
    implements _$$CounterChangeOfWarmingImplCopyWith<T, $Res> {
  __$$CounterChangeOfWarmingImplCopyWithImpl(
      _$CounterChangeOfWarmingImpl<T> _value,
      $Res Function(_$CounterChangeOfWarmingImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newCounter = null,
  }) {
    return _then(_$CounterChangeOfWarmingImpl<T>(
      newCounter: null == newCounter
          ? _value.newCounter
          : newCounter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CounterChangeOfWarmingImpl<T> implements CounterChangeOfWarming<T> {
  const _$CounterChangeOfWarmingImpl({required this.newCounter});

  @override
  final int newCounter;

  @override
  String toString() {
    return 'TrainerState<$T>.counterChangeOfWarming(newCounter: $newCounter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterChangeOfWarmingImpl<T> &&
            (identical(other.newCounter, newCounter) ||
                other.newCounter == newCounter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newCounter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterChangeOfWarmingImplCopyWith<T, _$CounterChangeOfWarmingImpl<T>>
      get copyWith => __$$CounterChangeOfWarmingImplCopyWithImpl<T,
          _$CounterChangeOfWarmingImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() beforeWarming,
    required TResult Function(int savedCounter) counterChange,
    required TResult Function(int newCounter) counterChangeOfWarming,
    required TResult Function() warmingFinished,
    required TResult Function() closingTraining,
    required TResult Function(String? newSelect) changeSelection,
  }) {
    return counterChangeOfWarming(newCounter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforeWarming,
    TResult? Function(int savedCounter)? counterChange,
    TResult? Function(int newCounter)? counterChangeOfWarming,
    TResult? Function()? warmingFinished,
    TResult? Function()? closingTraining,
    TResult? Function(String? newSelect)? changeSelection,
  }) {
    return counterChangeOfWarming?.call(newCounter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforeWarming,
    TResult Function(int savedCounter)? counterChange,
    TResult Function(int newCounter)? counterChangeOfWarming,
    TResult Function()? warmingFinished,
    TResult Function()? closingTraining,
    TResult Function(String? newSelect)? changeSelection,
    required TResult orElse(),
  }) {
    if (counterChangeOfWarming != null) {
      return counterChangeOfWarming(newCounter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BeforeWarming<T> value) beforeWarming,
    required TResult Function(CounterChange<T> value) counterChange,
    required TResult Function(CounterChangeOfWarming<T> value)
        counterChangeOfWarming,
    required TResult Function(WarmingFinished<T> value) warmingFinished,
    required TResult Function(ClosingTraining<T> value) closingTraining,
    required TResult Function(ChangeSelection<T> value) changeSelection,
  }) {
    return counterChangeOfWarming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BeforeWarming<T> value)? beforeWarming,
    TResult? Function(CounterChange<T> value)? counterChange,
    TResult? Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult? Function(WarmingFinished<T> value)? warmingFinished,
    TResult? Function(ClosingTraining<T> value)? closingTraining,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
  }) {
    return counterChangeOfWarming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BeforeWarming<T> value)? beforeWarming,
    TResult Function(CounterChange<T> value)? counterChange,
    TResult Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult Function(WarmingFinished<T> value)? warmingFinished,
    TResult Function(ClosingTraining<T> value)? closingTraining,
    TResult Function(ChangeSelection<T> value)? changeSelection,
    required TResult orElse(),
  }) {
    if (counterChangeOfWarming != null) {
      return counterChangeOfWarming(this);
    }
    return orElse();
  }
}

abstract class CounterChangeOfWarming<T> implements TrainerState<T> {
  const factory CounterChangeOfWarming({required final int newCounter}) =
      _$CounterChangeOfWarmingImpl<T>;

  int get newCounter;
  @JsonKey(ignore: true)
  _$$CounterChangeOfWarmingImplCopyWith<T, _$CounterChangeOfWarmingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WarmingFinishedImplCopyWith<T, $Res> {
  factory _$$WarmingFinishedImplCopyWith(_$WarmingFinishedImpl<T> value,
          $Res Function(_$WarmingFinishedImpl<T>) then) =
      __$$WarmingFinishedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$WarmingFinishedImplCopyWithImpl<T, $Res>
    extends _$TrainerStateCopyWithImpl<T, $Res, _$WarmingFinishedImpl<T>>
    implements _$$WarmingFinishedImplCopyWith<T, $Res> {
  __$$WarmingFinishedImplCopyWithImpl(_$WarmingFinishedImpl<T> _value,
      $Res Function(_$WarmingFinishedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WarmingFinishedImpl<T> implements WarmingFinished<T> {
  const _$WarmingFinishedImpl();

  @override
  String toString() {
    return 'TrainerState<$T>.warmingFinished()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WarmingFinishedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() beforeWarming,
    required TResult Function(int savedCounter) counterChange,
    required TResult Function(int newCounter) counterChangeOfWarming,
    required TResult Function() warmingFinished,
    required TResult Function() closingTraining,
    required TResult Function(String? newSelect) changeSelection,
  }) {
    return warmingFinished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforeWarming,
    TResult? Function(int savedCounter)? counterChange,
    TResult? Function(int newCounter)? counterChangeOfWarming,
    TResult? Function()? warmingFinished,
    TResult? Function()? closingTraining,
    TResult? Function(String? newSelect)? changeSelection,
  }) {
    return warmingFinished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforeWarming,
    TResult Function(int savedCounter)? counterChange,
    TResult Function(int newCounter)? counterChangeOfWarming,
    TResult Function()? warmingFinished,
    TResult Function()? closingTraining,
    TResult Function(String? newSelect)? changeSelection,
    required TResult orElse(),
  }) {
    if (warmingFinished != null) {
      return warmingFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BeforeWarming<T> value) beforeWarming,
    required TResult Function(CounterChange<T> value) counterChange,
    required TResult Function(CounterChangeOfWarming<T> value)
        counterChangeOfWarming,
    required TResult Function(WarmingFinished<T> value) warmingFinished,
    required TResult Function(ClosingTraining<T> value) closingTraining,
    required TResult Function(ChangeSelection<T> value) changeSelection,
  }) {
    return warmingFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BeforeWarming<T> value)? beforeWarming,
    TResult? Function(CounterChange<T> value)? counterChange,
    TResult? Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult? Function(WarmingFinished<T> value)? warmingFinished,
    TResult? Function(ClosingTraining<T> value)? closingTraining,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
  }) {
    return warmingFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BeforeWarming<T> value)? beforeWarming,
    TResult Function(CounterChange<T> value)? counterChange,
    TResult Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult Function(WarmingFinished<T> value)? warmingFinished,
    TResult Function(ClosingTraining<T> value)? closingTraining,
    TResult Function(ChangeSelection<T> value)? changeSelection,
    required TResult orElse(),
  }) {
    if (warmingFinished != null) {
      return warmingFinished(this);
    }
    return orElse();
  }
}

abstract class WarmingFinished<T> implements TrainerState<T> {
  const factory WarmingFinished() = _$WarmingFinishedImpl<T>;
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
    required TResult Function(int savedCounter) counterChange,
    required TResult Function(int newCounter) counterChangeOfWarming,
    required TResult Function() warmingFinished,
    required TResult Function() closingTraining,
    required TResult Function(String? newSelect) changeSelection,
  }) {
    return closingTraining();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforeWarming,
    TResult? Function(int savedCounter)? counterChange,
    TResult? Function(int newCounter)? counterChangeOfWarming,
    TResult? Function()? warmingFinished,
    TResult? Function()? closingTraining,
    TResult? Function(String? newSelect)? changeSelection,
  }) {
    return closingTraining?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforeWarming,
    TResult Function(int savedCounter)? counterChange,
    TResult Function(int newCounter)? counterChangeOfWarming,
    TResult Function()? warmingFinished,
    TResult Function()? closingTraining,
    TResult Function(String? newSelect)? changeSelection,
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
    required TResult Function(CounterChange<T> value) counterChange,
    required TResult Function(CounterChangeOfWarming<T> value)
        counterChangeOfWarming,
    required TResult Function(WarmingFinished<T> value) warmingFinished,
    required TResult Function(ClosingTraining<T> value) closingTraining,
    required TResult Function(ChangeSelection<T> value) changeSelection,
  }) {
    return closingTraining(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BeforeWarming<T> value)? beforeWarming,
    TResult? Function(CounterChange<T> value)? counterChange,
    TResult? Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult? Function(WarmingFinished<T> value)? warmingFinished,
    TResult? Function(ClosingTraining<T> value)? closingTraining,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
  }) {
    return closingTraining?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BeforeWarming<T> value)? beforeWarming,
    TResult Function(CounterChange<T> value)? counterChange,
    TResult Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult Function(WarmingFinished<T> value)? warmingFinished,
    TResult Function(ClosingTraining<T> value)? closingTraining,
    TResult Function(ChangeSelection<T> value)? changeSelection,
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
    extends _$TrainerStateCopyWithImpl<T, $Res, _$ChangeSelectionImpl<T>>
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
    return 'TrainerState<$T>.changeSelection(newSelect: $newSelect)';
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
    required TResult Function() beforeWarming,
    required TResult Function(int savedCounter) counterChange,
    required TResult Function(int newCounter) counterChangeOfWarming,
    required TResult Function() warmingFinished,
    required TResult Function() closingTraining,
    required TResult Function(String? newSelect) changeSelection,
  }) {
    return changeSelection(newSelect);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? beforeWarming,
    TResult? Function(int savedCounter)? counterChange,
    TResult? Function(int newCounter)? counterChangeOfWarming,
    TResult? Function()? warmingFinished,
    TResult? Function()? closingTraining,
    TResult? Function(String? newSelect)? changeSelection,
  }) {
    return changeSelection?.call(newSelect);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? beforeWarming,
    TResult Function(int savedCounter)? counterChange,
    TResult Function(int newCounter)? counterChangeOfWarming,
    TResult Function()? warmingFinished,
    TResult Function()? closingTraining,
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
    required TResult Function(BeforeWarming<T> value) beforeWarming,
    required TResult Function(CounterChange<T> value) counterChange,
    required TResult Function(CounterChangeOfWarming<T> value)
        counterChangeOfWarming,
    required TResult Function(WarmingFinished<T> value) warmingFinished,
    required TResult Function(ClosingTraining<T> value) closingTraining,
    required TResult Function(ChangeSelection<T> value) changeSelection,
  }) {
    return changeSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BeforeWarming<T> value)? beforeWarming,
    TResult? Function(CounterChange<T> value)? counterChange,
    TResult? Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult? Function(WarmingFinished<T> value)? warmingFinished,
    TResult? Function(ClosingTraining<T> value)? closingTraining,
    TResult? Function(ChangeSelection<T> value)? changeSelection,
  }) {
    return changeSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BeforeWarming<T> value)? beforeWarming,
    TResult Function(CounterChange<T> value)? counterChange,
    TResult Function(CounterChangeOfWarming<T> value)? counterChangeOfWarming,
    TResult Function(WarmingFinished<T> value)? warmingFinished,
    TResult Function(ClosingTraining<T> value)? closingTraining,
    TResult Function(ChangeSelection<T> value)? changeSelection,
    required TResult orElse(),
  }) {
    if (changeSelection != null) {
      return changeSelection(this);
    }
    return orElse();
  }
}

abstract class ChangeSelection<T> implements TrainerState<T> {
  const factory ChangeSelection(final String? newSelect) =
      _$ChangeSelectionImpl<T>;

  String? get newSelect;
  @JsonKey(ignore: true)
  _$$ChangeSelectionImplCopyWith<T, _$ChangeSelectionImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
