// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemDescriptionValidationErrorTearOff {
  const _$ItemDescriptionValidationErrorTearOff();

  _TooLong tooLong(int maxLength) {
    return _TooLong(
      maxLength,
    );
  }
}

/// @nodoc
const $ItemDescriptionValidationError =
    _$ItemDescriptionValidationErrorTearOff();

/// @nodoc
mixin _$ItemDescriptionValidationError {
  int get maxLength => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int maxLength) tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int maxLength)? tooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TooLong value) tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TooLong value)? tooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemDescriptionValidationErrorCopyWith<ItemDescriptionValidationError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDescriptionValidationErrorCopyWith<$Res> {
  factory $ItemDescriptionValidationErrorCopyWith(
          ItemDescriptionValidationError value,
          $Res Function(ItemDescriptionValidationError) then) =
      _$ItemDescriptionValidationErrorCopyWithImpl<$Res>;
  $Res call({int maxLength});
}

/// @nodoc
class _$ItemDescriptionValidationErrorCopyWithImpl<$Res>
    implements $ItemDescriptionValidationErrorCopyWith<$Res> {
  _$ItemDescriptionValidationErrorCopyWithImpl(this._value, this._then);

  final ItemDescriptionValidationError _value;
  // ignore: unused_field
  final $Res Function(ItemDescriptionValidationError) _then;

  @override
  $Res call({
    Object? maxLength = freezed,
  }) {
    return _then(_value.copyWith(
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TooLongCopyWith<$Res>
    implements $ItemDescriptionValidationErrorCopyWith<$Res> {
  factory _$TooLongCopyWith(_TooLong value, $Res Function(_TooLong) then) =
      __$TooLongCopyWithImpl<$Res>;
  @override
  $Res call({int maxLength});
}

/// @nodoc
class __$TooLongCopyWithImpl<$Res>
    extends _$ItemDescriptionValidationErrorCopyWithImpl<$Res>
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
    return 'ItemDescriptionValidationError.tooLong(maxLength: $maxLength)';
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
    required TResult Function(int maxLength) tooLong,
  }) {
    return tooLong(maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_TooLong value) tooLong,
  }) {
    return tooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TooLong value)? tooLong,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong(this);
    }
    return orElse();
  }
}

abstract class _TooLong implements ItemDescriptionValidationError {
  factory _TooLong(int maxLength) = _$_TooLong;

  @override
  int get maxLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TooLongCopyWith<_TooLong> get copyWith =>
      throw _privateConstructorUsedError;
}
