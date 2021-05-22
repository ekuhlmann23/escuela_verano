// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IdValidationErrorTearOff {
  const _$IdValidationErrorTearOff();

  _InvalidId invalidId(String id) {
    return _InvalidId(
      id,
    );
  }
}

/// @nodoc
const $IdValidationError = _$IdValidationErrorTearOff();

/// @nodoc
mixin _$IdValidationError {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) invalidId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? invalidId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidId value) invalidId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidId value)? invalidId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IdValidationErrorCopyWith<IdValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdValidationErrorCopyWith<$Res> {
  factory $IdValidationErrorCopyWith(
          IdValidationError value, $Res Function(IdValidationError) then) =
      _$IdValidationErrorCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$IdValidationErrorCopyWithImpl<$Res>
    implements $IdValidationErrorCopyWith<$Res> {
  _$IdValidationErrorCopyWithImpl(this._value, this._then);

  final IdValidationError _value;
  // ignore: unused_field
  final $Res Function(IdValidationError) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InvalidIdCopyWith<$Res>
    implements $IdValidationErrorCopyWith<$Res> {
  factory _$InvalidIdCopyWith(
          _InvalidId value, $Res Function(_InvalidId) then) =
      __$InvalidIdCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$InvalidIdCopyWithImpl<$Res>
    extends _$IdValidationErrorCopyWithImpl<$Res>
    implements _$InvalidIdCopyWith<$Res> {
  __$InvalidIdCopyWithImpl(_InvalidId _value, $Res Function(_InvalidId) _then)
      : super(_value, (v) => _then(v as _InvalidId));

  @override
  _InvalidId get _value => super._value as _InvalidId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_InvalidId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidId implements _InvalidId {
  _$_InvalidId(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'IdValidationError.invalidId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$InvalidIdCopyWith<_InvalidId> get copyWith =>
      __$InvalidIdCopyWithImpl<_InvalidId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) invalidId,
  }) {
    return invalidId(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? invalidId,
    required TResult orElse(),
  }) {
    if (invalidId != null) {
      return invalidId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidId value) invalidId,
  }) {
    return invalidId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidId value)? invalidId,
    required TResult orElse(),
  }) {
    if (invalidId != null) {
      return invalidId(this);
    }
    return orElse();
  }
}

abstract class _InvalidId implements IdValidationError {
  factory _InvalidId(String id) = _$_InvalidId;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidIdCopyWith<_InvalidId> get copyWith =>
      throw _privateConstructorUsedError;
}
