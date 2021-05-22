// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'todo_edit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoEditStateTearOff {
  const _$TodoEditStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  DataState data(
      {required TodoList todoList,
      required String? listName,
      required List<TodoItemState> itemStates}) {
    return DataState(
      todoList: todoList,
      listName: listName,
      itemStates: itemStates,
    );
  }

  _Error error([String? friendlyMessage]) {
    return _Error(
      friendlyMessage,
    );
  }

  _Done done() {
    return const _Done();
  }
}

/// @nodoc
const $TodoEditState = _$TodoEditStateTearOff();

/// @nodoc
mixin _$TodoEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            TodoList todoList, String? listName, List<TodoItemState> itemStates)
        data,
    required TResult Function(String? friendlyMessage) error,
    required TResult Function() done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TodoList todoList, String? listName,
            List<TodoItemState> itemStates)?
        data,
    TResult Function(String? friendlyMessage)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(DataState value) data,
    required TResult Function(_Error value) error,
    required TResult Function(_Done value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(DataState value)? data,
    TResult Function(_Error value)? error,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEditStateCopyWith<$Res> {
  factory $TodoEditStateCopyWith(
          TodoEditState value, $Res Function(TodoEditState) then) =
      _$TodoEditStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoEditStateCopyWithImpl<$Res>
    implements $TodoEditStateCopyWith<$Res> {
  _$TodoEditStateCopyWithImpl(this._value, this._then);

  final TodoEditState _value;
  // ignore: unused_field
  final $Res Function(TodoEditState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$TodoEditStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TodoEditState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            TodoList todoList, String? listName, List<TodoItemState> itemStates)
        data,
    required TResult Function(String? friendlyMessage) error,
    required TResult Function() done,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TodoList todoList, String? listName,
            List<TodoItemState> itemStates)?
        data,
    TResult Function(String? friendlyMessage)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(DataState value) data,
    required TResult Function(_Error value) error,
    required TResult Function(_Done value) done,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(DataState value)? data,
    TResult Function(_Error value)? error,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TodoEditState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class $DataStateCopyWith<$Res> {
  factory $DataStateCopyWith(DataState value, $Res Function(DataState) then) =
      _$DataStateCopyWithImpl<$Res>;
  $Res call(
      {TodoList todoList, String? listName, List<TodoItemState> itemStates});
}

/// @nodoc
class _$DataStateCopyWithImpl<$Res> extends _$TodoEditStateCopyWithImpl<$Res>
    implements $DataStateCopyWith<$Res> {
  _$DataStateCopyWithImpl(DataState _value, $Res Function(DataState) _then)
      : super(_value, (v) => _then(v as DataState));

  @override
  DataState get _value => super._value as DataState;

  @override
  $Res call({
    Object? todoList = freezed,
    Object? listName = freezed,
    Object? itemStates = freezed,
  }) {
    return _then(DataState(
      todoList: todoList == freezed
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as TodoList,
      listName: listName == freezed
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String?,
      itemStates: itemStates == freezed
          ? _value.itemStates
          : itemStates // ignore: cast_nullable_to_non_nullable
              as List<TodoItemState>,
    ));
  }
}

/// @nodoc

class _$DataState implements DataState {
  const _$DataState(
      {required this.todoList,
      required this.listName,
      required this.itemStates});

  @override
  final TodoList todoList;
  @override
  final String? listName;
  @override
  final List<TodoItemState> itemStates;

  @override
  String toString() {
    return 'TodoEditState.data(todoList: $todoList, listName: $listName, itemStates: $itemStates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataState &&
            (identical(other.todoList, todoList) ||
                const DeepCollectionEquality()
                    .equals(other.todoList, todoList)) &&
            (identical(other.listName, listName) ||
                const DeepCollectionEquality()
                    .equals(other.listName, listName)) &&
            (identical(other.itemStates, itemStates) ||
                const DeepCollectionEquality()
                    .equals(other.itemStates, itemStates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(todoList) ^
      const DeepCollectionEquality().hash(listName) ^
      const DeepCollectionEquality().hash(itemStates);

  @JsonKey(ignore: true)
  @override
  $DataStateCopyWith<DataState> get copyWith =>
      _$DataStateCopyWithImpl<DataState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            TodoList todoList, String? listName, List<TodoItemState> itemStates)
        data,
    required TResult Function(String? friendlyMessage) error,
    required TResult Function() done,
  }) {
    return data(todoList, listName, itemStates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TodoList todoList, String? listName,
            List<TodoItemState> itemStates)?
        data,
    TResult Function(String? friendlyMessage)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(todoList, listName, itemStates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(DataState value) data,
    required TResult Function(_Error value) error,
    required TResult Function(_Done value) done,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(DataState value)? data,
    TResult Function(_Error value)? error,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataState implements TodoEditState {
  const factory DataState(
      {required TodoList todoList,
      required String? listName,
      required List<TodoItemState> itemStates}) = _$DataState;

  TodoList get todoList => throw _privateConstructorUsedError;
  String? get listName => throw _privateConstructorUsedError;
  List<TodoItemState> get itemStates => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataStateCopyWith<DataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String? friendlyMessage});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TodoEditStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? friendlyMessage = freezed,
  }) {
    return _then(_Error(
      friendlyMessage == freezed
          ? _value.friendlyMessage
          : friendlyMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error([this.friendlyMessage]);

  @override
  final String? friendlyMessage;

  @override
  String toString() {
    return 'TodoEditState.error(friendlyMessage: $friendlyMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.friendlyMessage, friendlyMessage) ||
                const DeepCollectionEquality()
                    .equals(other.friendlyMessage, friendlyMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(friendlyMessage);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            TodoList todoList, String? listName, List<TodoItemState> itemStates)
        data,
    required TResult Function(String? friendlyMessage) error,
    required TResult Function() done,
  }) {
    return error(friendlyMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TodoList todoList, String? listName,
            List<TodoItemState> itemStates)?
        data,
    TResult Function(String? friendlyMessage)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(friendlyMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(DataState value) data,
    required TResult Function(_Error value) error,
    required TResult Function(_Done value) done,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(DataState value)? data,
    TResult Function(_Error value)? error,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TodoEditState {
  const factory _Error([String? friendlyMessage]) = _$_Error;

  String? get friendlyMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DoneCopyWith<$Res> {
  factory _$DoneCopyWith(_Done value, $Res Function(_Done) then) =
      __$DoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$DoneCopyWithImpl<$Res> extends _$TodoEditStateCopyWithImpl<$Res>
    implements _$DoneCopyWith<$Res> {
  __$DoneCopyWithImpl(_Done _value, $Res Function(_Done) _then)
      : super(_value, (v) => _then(v as _Done));

  @override
  _Done get _value => super._value as _Done;
}

/// @nodoc

class _$_Done implements _Done {
  const _$_Done();

  @override
  String toString() {
    return 'TodoEditState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Done);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            TodoList todoList, String? listName, List<TodoItemState> itemStates)
        data,
    required TResult Function(String? friendlyMessage) error,
    required TResult Function() done,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TodoList todoList, String? listName,
            List<TodoItemState> itemStates)?
        data,
    TResult Function(String? friendlyMessage)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(DataState value) data,
    required TResult Function(_Error value) error,
    required TResult Function(_Done value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(DataState value)? data,
    TResult Function(_Error value)? error,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _Done implements TodoEditState {
  const factory _Done() = _$_Done;
}

/// @nodoc
class _$TodoItemStateTearOff {
  const _$TodoItemStateTearOff();

  _TodoItemState call({required String? bodyText, required bool completed}) {
    return _TodoItemState(
      bodyText: bodyText,
      completed: completed,
    );
  }
}

/// @nodoc
const $TodoItemState = _$TodoItemStateTearOff();

/// @nodoc
mixin _$TodoItemState {
  String? get bodyText => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoItemStateCopyWith<TodoItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemStateCopyWith<$Res> {
  factory $TodoItemStateCopyWith(
          TodoItemState value, $Res Function(TodoItemState) then) =
      _$TodoItemStateCopyWithImpl<$Res>;
  $Res call({String? bodyText, bool completed});
}

/// @nodoc
class _$TodoItemStateCopyWithImpl<$Res>
    implements $TodoItemStateCopyWith<$Res> {
  _$TodoItemStateCopyWithImpl(this._value, this._then);

  final TodoItemState _value;
  // ignore: unused_field
  final $Res Function(TodoItemState) _then;

  @override
  $Res call({
    Object? bodyText = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      bodyText: bodyText == freezed
          ? _value.bodyText
          : bodyText // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodoItemStateCopyWith<$Res>
    implements $TodoItemStateCopyWith<$Res> {
  factory _$TodoItemStateCopyWith(
          _TodoItemState value, $Res Function(_TodoItemState) then) =
      __$TodoItemStateCopyWithImpl<$Res>;
  @override
  $Res call({String? bodyText, bool completed});
}

/// @nodoc
class __$TodoItemStateCopyWithImpl<$Res>
    extends _$TodoItemStateCopyWithImpl<$Res>
    implements _$TodoItemStateCopyWith<$Res> {
  __$TodoItemStateCopyWithImpl(
      _TodoItemState _value, $Res Function(_TodoItemState) _then)
      : super(_value, (v) => _then(v as _TodoItemState));

  @override
  _TodoItemState get _value => super._value as _TodoItemState;

  @override
  $Res call({
    Object? bodyText = freezed,
    Object? completed = freezed,
  }) {
    return _then(_TodoItemState(
      bodyText: bodyText == freezed
          ? _value.bodyText
          : bodyText // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TodoItemState implements _TodoItemState {
  const _$_TodoItemState({required this.bodyText, required this.completed});

  @override
  final String? bodyText;
  @override
  final bool completed;

  @override
  String toString() {
    return 'TodoItemState(bodyText: $bodyText, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoItemState &&
            (identical(other.bodyText, bodyText) ||
                const DeepCollectionEquality()
                    .equals(other.bodyText, bodyText)) &&
            (identical(other.completed, completed) ||
                const DeepCollectionEquality()
                    .equals(other.completed, completed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bodyText) ^
      const DeepCollectionEquality().hash(completed);

  @JsonKey(ignore: true)
  @override
  _$TodoItemStateCopyWith<_TodoItemState> get copyWith =>
      __$TodoItemStateCopyWithImpl<_TodoItemState>(this, _$identity);
}

abstract class _TodoItemState implements TodoItemState {
  const factory _TodoItemState(
      {required String? bodyText, required bool completed}) = _$_TodoItemState;

  @override
  String? get bodyText => throw _privateConstructorUsedError;
  @override
  bool get completed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TodoItemStateCopyWith<_TodoItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
