// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'list_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListTitleValidationErrorTearOff {
  const _$ListTitleValidationErrorTearOff();

  _IsEmpty isEmpty() {
    return _IsEmpty();
  }

  _TooLong tooLong(int maxLength) {
    return _TooLong(
      maxLength,
    );
  }
}

/// @nodoc
const $ListTitleValidationError = _$ListTitleValidationErrorTearOff();

/// @nodoc
mixin _$ListTitleValidationError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isEmpty,
    required TResult Function(int maxLength) tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isEmpty,
    TResult Function(int maxLength)? tooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsEmpty value) isEmpty,
    required TResult Function(_TooLong value) tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsEmpty value)? isEmpty,
    TResult Function(_TooLong value)? tooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTitleValidationErrorCopyWith<$Res> {
  factory $ListTitleValidationErrorCopyWith(ListTitleValidationError value,
          $Res Function(ListTitleValidationError) then) =
      _$ListTitleValidationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListTitleValidationErrorCopyWithImpl<$Res>
    implements $ListTitleValidationErrorCopyWith<$Res> {
  _$ListTitleValidationErrorCopyWithImpl(this._value, this._then);

  final ListTitleValidationError _value;
  // ignore: unused_field
  final $Res Function(ListTitleValidationError) _then;
}

/// @nodoc
abstract class _$IsEmptyCopyWith<$Res> {
  factory _$IsEmptyCopyWith(_IsEmpty value, $Res Function(_IsEmpty) then) =
      __$IsEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsEmptyCopyWithImpl<$Res>
    extends _$ListTitleValidationErrorCopyWithImpl<$Res>
    implements _$IsEmptyCopyWith<$Res> {
  __$IsEmptyCopyWithImpl(_IsEmpty _value, $Res Function(_IsEmpty) _then)
      : super(_value, (v) => _then(v as _IsEmpty));

  @override
  _IsEmpty get _value => super._value as _IsEmpty;
}

/// @nodoc

class _$_IsEmpty implements _IsEmpty {
  _$_IsEmpty();

  @override
  String toString() {
    return 'ListTitleValidationError.isEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isEmpty,
    required TResult Function(int maxLength) tooLong,
  }) {
    return isEmpty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isEmpty,
    TResult Function(int maxLength)? tooLong,
    required TResult orElse(),
  }) {
    if (isEmpty != null) {
      return isEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsEmpty value) isEmpty,
    required TResult Function(_TooLong value) tooLong,
  }) {
    return isEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsEmpty value)? isEmpty,
    TResult Function(_TooLong value)? tooLong,
    required TResult orElse(),
  }) {
    if (isEmpty != null) {
      return isEmpty(this);
    }
    return orElse();
  }
}

abstract class _IsEmpty implements ListTitleValidationError {
  factory _IsEmpty() = _$_IsEmpty;
}

/// @nodoc
abstract class _$TooLongCopyWith<$Res> {
  factory _$TooLongCopyWith(_TooLong value, $Res Function(_TooLong) then) =
      __$TooLongCopyWithImpl<$Res>;
  $Res call({int maxLength});
}

/// @nodoc
class __$TooLongCopyWithImpl<$Res>
    extends _$ListTitleValidationErrorCopyWithImpl<$Res>
    implements _$TooLongCopyWith<$Res> {
  __$TooLongCopyWithImpl(_TooLong _value, $Res Function(_TooLong) _then)
      : super(_value, (v) => _then(v as _TooLong));

  @override
  _TooLong get _value => super._value as _TooLong;

  @override
  $Res call({
    Object? maxLength = freezed,
  }) {
    return _then(_TooLong(
      maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TooLong implements _TooLong {
  _$_TooLong(this.maxLength);

  @override
  final int maxLength;

  @override
  String toString() {
    return 'ListTitleValidationError.tooLong(maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TooLong &&
            (identical(other.maxLength, maxLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxLength, maxLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(maxLength);

  @JsonKey(ignore: true)
  @override
  _$TooLongCopyWith<_TooLong> get copyWith =>
      __$TooLongCopyWithImpl<_TooLong>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isEmpty,
    required TResult Function(int maxLength) tooLong,
  }) {
    return tooLong(maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isEmpty,
    TResult Function(int maxLength)? tooLong,
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
    required TResult Function(_IsEmpty value) isEmpty,
    required TResult Function(_TooLong value) tooLong,
  }) {
    return tooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsEmpty value)? isEmpty,
    TResult Function(_TooLong value)? tooLong,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong(this);
    }
    return orElse();
  }
}

abstract class _TooLong implements ListTitleValidationError {
  factory _TooLong(int maxLength) = _$_TooLong;

  int get maxLength => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TooLongCopyWith<_TooLong> get copyWith =>
      throw _privateConstructorUsedError;
}
