// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PasswordValidationErrorTearOff {
  const _$PasswordValidationErrorTearOff();

  NullOrEmpty nullOrEmpty() {
    return const NullOrEmpty();
  }

  TooLong tooLong(int maxLength) {
    return TooLong(
      maxLength,
    );
  }

  TooShort tooShort(int minLength) {
    return TooShort(
      minLength,
    );
  }
}

/// @nodoc
const $PasswordValidationError = _$PasswordValidationErrorTearOff();

/// @nodoc
mixin _$PasswordValidationError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nullOrEmpty,
    required TResult Function(int maxLength) tooLong,
    required TResult Function(int minLength) tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nullOrEmpty,
    TResult Function(int maxLength)? tooLong,
    TResult Function(int minLength)? tooShort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NullOrEmpty value) nullOrEmpty,
    required TResult Function(TooLong value) tooLong,
    required TResult Function(TooShort value) tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NullOrEmpty value)? nullOrEmpty,
    TResult Function(TooLong value)? tooLong,
    TResult Function(TooShort value)? tooShort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordValidationErrorCopyWith<$Res> {
  factory $PasswordValidationErrorCopyWith(PasswordValidationError value,
          $Res Function(PasswordValidationError) then) =
      _$PasswordValidationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordValidationErrorCopyWithImpl<$Res>
    implements $PasswordValidationErrorCopyWith<$Res> {
  _$PasswordValidationErrorCopyWithImpl(this._value, this._then);

  final PasswordValidationError _value;
  // ignore: unused_field
  final $Res Function(PasswordValidationError) _then;
}

/// @nodoc
abstract class $NullOrEmptyCopyWith<$Res> {
  factory $NullOrEmptyCopyWith(
          NullOrEmpty value, $Res Function(NullOrEmpty) then) =
      _$NullOrEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$NullOrEmptyCopyWithImpl<$Res>
    extends _$PasswordValidationErrorCopyWithImpl<$Res>
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
    return 'PasswordValidationError.nullOrEmpty()';
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
    required TResult Function(int maxLength) tooLong,
    required TResult Function(int minLength) tooShort,
  }) {
    return nullOrEmpty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nullOrEmpty,
    TResult Function(int maxLength)? tooLong,
    TResult Function(int minLength)? tooShort,
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
    required TResult Function(TooLong value) tooLong,
    required TResult Function(TooShort value) tooShort,
  }) {
    return nullOrEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NullOrEmpty value)? nullOrEmpty,
    TResult Function(TooLong value)? tooLong,
    TResult Function(TooShort value)? tooShort,
    required TResult orElse(),
  }) {
    if (nullOrEmpty != null) {
      return nullOrEmpty(this);
    }
    return orElse();
  }
}

abstract class NullOrEmpty implements PasswordValidationError {
  const factory NullOrEmpty() = _$NullOrEmpty;
}

/// @nodoc
abstract class $TooLongCopyWith<$Res> {
  factory $TooLongCopyWith(TooLong value, $Res Function(TooLong) then) =
      _$TooLongCopyWithImpl<$Res>;
  $Res call({int maxLength});
}

/// @nodoc
class _$TooLongCopyWithImpl<$Res>
    extends _$PasswordValidationErrorCopyWithImpl<$Res>
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
    return 'PasswordValidationError.tooLong(maxLength: $maxLength)';
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
    required TResult Function() nullOrEmpty,
    required TResult Function(int maxLength) tooLong,
    required TResult Function(int minLength) tooShort,
  }) {
    return tooLong(maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nullOrEmpty,
    TResult Function(int maxLength)? tooLong,
    TResult Function(int minLength)? tooShort,
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
    required TResult Function(NullOrEmpty value) nullOrEmpty,
    required TResult Function(TooLong value) tooLong,
    required TResult Function(TooShort value) tooShort,
  }) {
    return tooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NullOrEmpty value)? nullOrEmpty,
    TResult Function(TooLong value)? tooLong,
    TResult Function(TooShort value)? tooShort,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong(this);
    }
    return orElse();
  }
}

abstract class TooLong implements PasswordValidationError {
  const factory TooLong(int maxLength) = _$TooLong;

  int get maxLength => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TooLongCopyWith<TooLong> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TooShortCopyWith<$Res> {
  factory $TooShortCopyWith(TooShort value, $Res Function(TooShort) then) =
      _$TooShortCopyWithImpl<$Res>;
  $Res call({int minLength});
}

/// @nodoc
class _$TooShortCopyWithImpl<$Res>
    extends _$PasswordValidationErrorCopyWithImpl<$Res>
    implements $TooShortCopyWith<$Res> {
  _$TooShortCopyWithImpl(TooShort _value, $Res Function(TooShort) _then)
      : super(_value, (v) => _then(v as TooShort));

  @override
  TooShort get _value => super._value as TooShort;

  @override
  $Res call({
    Object? minLength = freezed,
  }) {
    return _then(TooShort(
      minLength == freezed
          ? _value.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TooShort implements TooShort {
  const _$TooShort(this.minLength);

  @override
  final int minLength;

  @override
  String toString() {
    return 'PasswordValidationError.tooShort(minLength: $minLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TooShort &&
            (identical(other.minLength, minLength) ||
                const DeepCollectionEquality()
                    .equals(other.minLength, minLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(minLength);

  @JsonKey(ignore: true)
  @override
  $TooShortCopyWith<TooShort> get copyWith =>
      _$TooShortCopyWithImpl<TooShort>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nullOrEmpty,
    required TResult Function(int maxLength) tooLong,
    required TResult Function(int minLength) tooShort,
  }) {
    return tooShort(minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nullOrEmpty,
    TResult Function(int maxLength)? tooLong,
    TResult Function(int minLength)? tooShort,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort(minLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NullOrEmpty value) nullOrEmpty,
    required TResult Function(TooLong value) tooLong,
    required TResult Function(TooShort value) tooShort,
  }) {
    return tooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NullOrEmpty value)? nullOrEmpty,
    TResult Function(TooLong value)? tooLong,
    TResult Function(TooShort value)? tooShort,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort(this);
    }
    return orElse();
  }
}

abstract class TooShort implements PasswordValidationError {
  const factory TooShort(int minLength) = _$TooShort;

  int get minLength => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TooShortCopyWith<TooShort> get copyWith =>
      throw _privateConstructorUsedError;
}
