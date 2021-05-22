// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'counter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CounterStateTearOff {
  const _$CounterStateTearOff();

  _CountingCounterState counting(int count) {
    return _CountingCounterState(
      count,
    );
  }

  _ResetCounterState reset() {
    return const _ResetCounterState();
  }
}

/// @nodoc
const $CounterState = _$CounterStateTearOff();

/// @nodoc
mixin _$CounterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) counting,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? counting,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountingCounterState value) counting,
    required TResult Function(_ResetCounterState value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountingCounterState value)? counting,
    TResult Function(_ResetCounterState value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  final CounterState _value;
  // ignore: unused_field
  final $Res Function(CounterState) _then;
}

/// @nodoc
abstract class _$CountingCounterStateCopyWith<$Res> {
  factory _$CountingCounterStateCopyWith(_CountingCounterState value,
          $Res Function(_CountingCounterState) then) =
      __$CountingCounterStateCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class __$CountingCounterStateCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res>
    implements _$CountingCounterStateCopyWith<$Res> {
  __$CountingCounterStateCopyWithImpl(
      _CountingCounterState _value, $Res Function(_CountingCounterState) _then)
      : super(_value, (v) => _then(v as _CountingCounterState));

  @override
  _CountingCounterState get _value => super._value as _CountingCounterState;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_CountingCounterState(
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CountingCounterState implements _CountingCounterState {
  const _$_CountingCounterState(this.count);

  @override
  final int count;

  @override
  String toString() {
    return 'CounterState.counting(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountingCounterState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$CountingCounterStateCopyWith<_CountingCounterState> get copyWith =>
      __$CountingCounterStateCopyWithImpl<_CountingCounterState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) counting,
    required TResult Function() reset,
  }) {
    return counting(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? counting,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (counting != null) {
      return counting(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountingCounterState value) counting,
    required TResult Function(_ResetCounterState value) reset,
  }) {
    return counting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountingCounterState value)? counting,
    TResult Function(_ResetCounterState value)? reset,
    required TResult orElse(),
  }) {
    if (counting != null) {
      return counting(this);
    }
    return orElse();
  }
}

abstract class _CountingCounterState implements CounterState {
  const factory _CountingCounterState(int count) = _$_CountingCounterState;

  int get count => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CountingCounterStateCopyWith<_CountingCounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResetCounterStateCopyWith<$Res> {
  factory _$ResetCounterStateCopyWith(
          _ResetCounterState value, $Res Function(_ResetCounterState) then) =
      __$ResetCounterStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCounterStateCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res>
    implements _$ResetCounterStateCopyWith<$Res> {
  __$ResetCounterStateCopyWithImpl(
      _ResetCounterState _value, $Res Function(_ResetCounterState) _then)
      : super(_value, (v) => _then(v as _ResetCounterState));

  @override
  _ResetCounterState get _value => super._value as _ResetCounterState;
}

/// @nodoc

class _$_ResetCounterState implements _ResetCounterState {
  const _$_ResetCounterState();

  @override
  String toString() {
    return 'CounterState.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResetCounterState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) counting,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? counting,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountingCounterState value) counting,
    required TResult Function(_ResetCounterState value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountingCounterState value)? counting,
    TResult Function(_ResetCounterState value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetCounterState implements CounterState {
  const factory _ResetCounterState() = _$_ResetCounterState;
}
