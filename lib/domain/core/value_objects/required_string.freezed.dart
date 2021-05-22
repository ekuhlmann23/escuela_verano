// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'required_string.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RequiredStringValidationErrorTearOff {
  const _$RequiredStringValidationErrorTearOff();

  NullOrEmpty nullOrEmpty() {
    return const NullOrEmpty();
  }
}

/// @nodoc
const $RequiredStringValidationError = _$RequiredStringValidationErrorTearOff();

/// @nodoc
mixin _$RequiredStringValidationError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nullOrEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nullOrEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NullOrEmpty value) nullOrEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NullOrEmpty value)? nullOrEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequiredStringValidationErrorCopyWith<$Res> {
  factory $RequiredStringValidationErrorCopyWith(
          RequiredStringValidationError value,
          $Res Function(RequiredStringValidationError) then) =
      _$RequiredStringValidationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequiredStringValidationErrorCopyWithImpl<$Res>
    implements $RequiredStringValidationErrorCopyWith<$Res> {
  _$RequiredStringValidationErrorCopyWithImpl(this._value, this._then);

  final RequiredStringValidationError _value;
  // ignore: unused_field
  final $Res Function(RequiredStringValidationError) _then;
}

/// @nodoc
abstract class $NullOrEmptyCopyWith<$Res> {
  factory $NullOrEmptyCopyWith(
          NullOrEmpty value, $Res Function(NullOrEmpty) then) =
      _$NullOrEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$NullOrEmptyCopyWithImpl<$Res>
    extends _$RequiredStringValidationErrorCopyWithImpl<$Res>
    implements $NullOrEmptyCopyWith<$Res> {
  _$NullOrEmptyCopyWithImpl(
      NullOrEmpty _value, $Res Function(NullOrEmpty) _then)
      : super(_value, (v) => _then(v as NullOrEmpty));

  @override
  NullOrEmpty get _value => super._value as NullOrEmpty;
}

/// @nodoc

class _$NullOrEmpty implements NullOrEmpty {
  const _$NullOrEmpty();

  @override
  String toString() {
    return 'RequiredStringValidationError.nullOrEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NullOrEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nullOrEmpty,
  }) {
    return nullOrEmpty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nullOrEmpty,
    required TResult orElse(),
  }) {
    if (nullOrEmpty != null) {
      return nullOrEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NullOrEmpty value) nullOrEmpty,
  }) {
    return nullOrEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NullOrEmpty value)? nullOrEmpty,
    required TResult orElse(),
  }) {
    if (nullOrEmpty != null) {
      return nullOrEmpty(this);
    }
    return orElse();
  }
}

abstract class NullOrEmpty implements RequiredStringValidationError {
  const factory NullOrEmpty() = _$NullOrEmpty;
}
