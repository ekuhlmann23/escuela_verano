// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'email.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmailValidationErrorTearOff {
  const _$EmailValidationErrorTearOff();

  InvalidEmail invalidEmail() {
    return const InvalidEmail();
  }

  TooLong tooLong(int maxLength) {
    return TooLong(
      maxLength,
    );
  }

  NullOrEmpty nullOrEmpty() {
    return const NullOrEmpty();
  }
}

/// @nodoc
const $EmailValidationError = _$EmailValidationErrorTearOff();

/// @nodoc
mixin _$EmailValidationError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function(int maxLength) tooLong,
    required TResult Function() nullOrEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function(int maxLength)? tooLong,
    TResult Function()? nullOrEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(TooLong value) tooLong,
    required TResult Function(NullOrEmpty value) nullOrEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(TooLong value)? tooLong,
    TResult Function(NullOrEmpty value)? nullOrEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailValidationErrorCopyWith<$Res> {
  factory $EmailValidationErrorCopyWith(EmailValidationError value,
          $Res Function(EmailValidationError) then) =
      _$EmailValidationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailValidationErrorCopyWithImpl<$Res>
    implements $EmailValidationErrorCopyWith<$Res> {
  _$EmailValidationErrorCopyWithImpl(this._value, this._then);

  final EmailValidationError _value;
  // ignore: unused_field
  final $Res Function(EmailValidationError) _then;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res>
    extends _$EmailValidationErrorCopyWithImpl<$Res>
    implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail _value, $Res Function(InvalidEmail) _then)
      : super(_value, (v) => _then(v as InvalidEmail));

  @override
  InvalidEmail get _value => super._value as InvalidEmail;
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail();

  @override
  String toString() {
    return 'EmailValidationError.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function(int maxLength) tooLong,
    required TResult Function() nullOrEmpty,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function(int maxLength)? tooLong,
    TResult Function()? nullOrEmpty,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(TooLong value) tooLong,
    required TResult Function(NullOrEmpty value) nullOrEmpty,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(TooLong value)? tooLong,
    TResult Function(NullOrEmpty value)? nullOrEmpty,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements EmailValidationError {
  const factory InvalidEmail() = _$InvalidEmail;
}

/// @nodoc
abstract class $TooLongCopyWith<$Res> {
  factory $TooLongCopyWith(TooLong value, $Res Function(TooLong) then) =
      _$TooLongCopyWithImpl<$Res>;
  $Res call({int maxLength});
}

/// @nodoc
class _$TooLongCopyWithImpl<$Res>
    extends _$EmailValidationErrorCopyWithImpl<$Res>
    implements $TooLongCopyWith<$Res> {
  _$TooLongCopyWithImpl(TooLong _value, $Res Function(TooLong) _then)
      : super(_value, (v) => _then(v as TooLong));

  @override
  TooLong get _value => super._value as TooLong;

  @override
  $Res call({
    Object? maxLength = freezed,
  }) {
    return _then(TooLong(
      maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TooLong implements TooLong {
  const _$TooLong(this.maxLength);

  @override
  final int maxLength;

  @override
  String toString() {
    return 'EmailValidationError.tooLong(maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TooLong &&
            (identical(other.maxLength, maxLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxLength, maxLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(maxLength);

  @JsonKey(ignore: true)
  @override
  $TooLongCopyWith<TooLong> get copyWith =>
      _$TooLongCopyWithImpl<TooLong>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function(int maxLength) tooLong,
    required TResult Function() nullOrEmpty,
  }) {
    return tooLong(maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function(int maxLength)? tooLong,
    TResult Function()? nullOrEmpty,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong(maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(TooLong value) tooLong,
    required TResult Function(NullOrEmpty value) nullOrEmpty,
  }) {
    return tooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(TooLong value)? tooLong,
    TResult Function(NullOrEmpty value)? nullOrEmpty,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong(this);
    }
    return orElse();
  }
}

abstract class TooLong implements EmailValidationError {
  const factory TooLong(int maxLength) = _$TooLong;

  int get maxLength => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TooLongCopyWith<TooLong> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NullOrEmptyCopyWith<$Res> {
  factory $NullOrEmptyCopyWith(
          NullOrEmpty value, $Res Function(NullOrEmpty) then) =
      _$NullOrEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$NullOrEmptyCopyWithImpl<$Res>
    extends _$EmailValidationErrorCopyWithImpl<$Res>
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
    return 'EmailValidationError.nullOrEmpty()';
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
    required TResult Function() invalidEmail,
    required TResult Function(int maxLength) tooLong,
    required TResult Function() nullOrEmpty,
  }) {
    return nullOrEmpty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function(int maxLength)? tooLong,
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
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(TooLong value) tooLong,
    required TResult Function(NullOrEmpty value) nullOrEmpty,
  }) {
    return nullOrEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(TooLong value)? tooLong,
    TResult Function(NullOrEmpty value)? nullOrEmpty,
    required TResult orElse(),
  }) {
    if (nullOrEmpty != null) {
      return nullOrEmpty(this);
    }
    return orElse();
  }
}

abstract class NullOrEmpty implements EmailValidationError {
  const factory NullOrEmpty() = _$NullOrEmpty;
}
