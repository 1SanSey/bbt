// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdatePasswordEvent {
  String get id => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String password) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String password)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String password)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatePassEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatePassEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatePassEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdatePasswordEventCopyWith<UpdatePasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePasswordEventCopyWith<$Res> {
  factory $UpdatePasswordEventCopyWith(
          UpdatePasswordEvent value, $Res Function(UpdatePasswordEvent) then) =
      _$UpdatePasswordEventCopyWithImpl<$Res, UpdatePasswordEvent>;
  @useResult
  $Res call({String id, String password});
}

/// @nodoc
class _$UpdatePasswordEventCopyWithImpl<$Res, $Val extends UpdatePasswordEvent>
    implements $UpdatePasswordEventCopyWith<$Res> {
  _$UpdatePasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePassEventImplCopyWith<$Res>
    implements $UpdatePasswordEventCopyWith<$Res> {
  factory _$$UpdatePassEventImplCopyWith(_$UpdatePassEventImpl value,
          $Res Function(_$UpdatePassEventImpl) then) =
      __$$UpdatePassEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String password});
}

/// @nodoc
class __$$UpdatePassEventImplCopyWithImpl<$Res>
    extends _$UpdatePasswordEventCopyWithImpl<$Res, _$UpdatePassEventImpl>
    implements _$$UpdatePassEventImplCopyWith<$Res> {
  __$$UpdatePassEventImplCopyWithImpl(
      _$UpdatePassEventImpl _value, $Res Function(_$UpdatePassEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? password = null,
  }) {
    return _then(_$UpdatePassEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePassEventImpl extends _UpdatePassEvent {
  const _$UpdatePassEventImpl({required this.id, required this.password})
      : super._();

  @override
  final String id;
  @override
  final String password;

  @override
  String toString() {
    return 'UpdatePasswordEvent.update(id: $id, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePassEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePassEventImplCopyWith<_$UpdatePassEventImpl> get copyWith =>
      __$$UpdatePassEventImplCopyWithImpl<_$UpdatePassEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String password) update,
  }) {
    return update(id, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String password)? update,
  }) {
    return update?.call(id, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String password)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(id, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatePassEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatePassEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatePassEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassEvent extends UpdatePasswordEvent {
  const factory _UpdatePassEvent(
      {required final String id,
      required final String password}) = _$UpdatePassEventImpl;
  const _UpdatePassEvent._() : super._();

  @override
  String get id;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePassEventImplCopyWith<_$UpdatePassEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdatePasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() updating,
    required TResult Function() updated,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? updating,
    TResult? Function()? updated,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? updating,
    TResult Function()? updated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyPassState value) empty,
    required TResult Function(_UpdatingPassState value) updating,
    required TResult Function(_UpdatedPassState value) updated,
    required TResult Function(_ErrorPassState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyPassState value)? empty,
    TResult? Function(_UpdatingPassState value)? updating,
    TResult? Function(_UpdatedPassState value)? updated,
    TResult? Function(_ErrorPassState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyPassState value)? empty,
    TResult Function(_UpdatingPassState value)? updating,
    TResult Function(_UpdatedPassState value)? updated,
    TResult Function(_ErrorPassState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePasswordStateCopyWith<$Res> {
  factory $UpdatePasswordStateCopyWith(
          UpdatePasswordState value, $Res Function(UpdatePasswordState) then) =
      _$UpdatePasswordStateCopyWithImpl<$Res, UpdatePasswordState>;
}

/// @nodoc
class _$UpdatePasswordStateCopyWithImpl<$Res, $Val extends UpdatePasswordState>
    implements $UpdatePasswordStateCopyWith<$Res> {
  _$UpdatePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyPassStateImplCopyWith<$Res> {
  factory _$$EmptyPassStateImplCopyWith(_$EmptyPassStateImpl value,
          $Res Function(_$EmptyPassStateImpl) then) =
      __$$EmptyPassStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyPassStateImplCopyWithImpl<$Res>
    extends _$UpdatePasswordStateCopyWithImpl<$Res, _$EmptyPassStateImpl>
    implements _$$EmptyPassStateImplCopyWith<$Res> {
  __$$EmptyPassStateImplCopyWithImpl(
      _$EmptyPassStateImpl _value, $Res Function(_$EmptyPassStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyPassStateImpl extends _EmptyPassState {
  const _$EmptyPassStateImpl() : super._();

  @override
  String toString() {
    return 'UpdatePasswordState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyPassStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() updating,
    required TResult Function() updated,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? updating,
    TResult? Function()? updated,
    TResult? Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? updating,
    TResult Function()? updated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyPassState value) empty,
    required TResult Function(_UpdatingPassState value) updating,
    required TResult Function(_UpdatedPassState value) updated,
    required TResult Function(_ErrorPassState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyPassState value)? empty,
    TResult? Function(_UpdatingPassState value)? updating,
    TResult? Function(_UpdatedPassState value)? updated,
    TResult? Function(_ErrorPassState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyPassState value)? empty,
    TResult Function(_UpdatingPassState value)? updating,
    TResult Function(_UpdatedPassState value)? updated,
    TResult Function(_ErrorPassState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyPassState extends UpdatePasswordState {
  const factory _EmptyPassState() = _$EmptyPassStateImpl;
  const _EmptyPassState._() : super._();
}

/// @nodoc
abstract class _$$UpdatingPassStateImplCopyWith<$Res> {
  factory _$$UpdatingPassStateImplCopyWith(_$UpdatingPassStateImpl value,
          $Res Function(_$UpdatingPassStateImpl) then) =
      __$$UpdatingPassStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatingPassStateImplCopyWithImpl<$Res>
    extends _$UpdatePasswordStateCopyWithImpl<$Res, _$UpdatingPassStateImpl>
    implements _$$UpdatingPassStateImplCopyWith<$Res> {
  __$$UpdatingPassStateImplCopyWithImpl(_$UpdatingPassStateImpl _value,
      $Res Function(_$UpdatingPassStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatingPassStateImpl extends _UpdatingPassState {
  const _$UpdatingPassStateImpl() : super._();

  @override
  String toString() {
    return 'UpdatePasswordState.updating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatingPassStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() updating,
    required TResult Function() updated,
    required TResult Function(String message) error,
  }) {
    return updating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? updating,
    TResult? Function()? updated,
    TResult? Function(String message)? error,
  }) {
    return updating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? updating,
    TResult Function()? updated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyPassState value) empty,
    required TResult Function(_UpdatingPassState value) updating,
    required TResult Function(_UpdatedPassState value) updated,
    required TResult Function(_ErrorPassState value) error,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyPassState value)? empty,
    TResult? Function(_UpdatingPassState value)? updating,
    TResult? Function(_UpdatedPassState value)? updated,
    TResult? Function(_ErrorPassState value)? error,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyPassState value)? empty,
    TResult Function(_UpdatingPassState value)? updating,
    TResult Function(_UpdatedPassState value)? updated,
    TResult Function(_ErrorPassState value)? error,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class _UpdatingPassState extends UpdatePasswordState {
  const factory _UpdatingPassState() = _$UpdatingPassStateImpl;
  const _UpdatingPassState._() : super._();
}

/// @nodoc
abstract class _$$UpdatedPassStateImplCopyWith<$Res> {
  factory _$$UpdatedPassStateImplCopyWith(_$UpdatedPassStateImpl value,
          $Res Function(_$UpdatedPassStateImpl) then) =
      __$$UpdatedPassStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatedPassStateImplCopyWithImpl<$Res>
    extends _$UpdatePasswordStateCopyWithImpl<$Res, _$UpdatedPassStateImpl>
    implements _$$UpdatedPassStateImplCopyWith<$Res> {
  __$$UpdatedPassStateImplCopyWithImpl(_$UpdatedPassStateImpl _value,
      $Res Function(_$UpdatedPassStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatedPassStateImpl extends _UpdatedPassState {
  const _$UpdatedPassStateImpl() : super._();

  @override
  String toString() {
    return 'UpdatePasswordState.updated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatedPassStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() updating,
    required TResult Function() updated,
    required TResult Function(String message) error,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? updating,
    TResult? Function()? updated,
    TResult? Function(String message)? error,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? updating,
    TResult Function()? updated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyPassState value) empty,
    required TResult Function(_UpdatingPassState value) updating,
    required TResult Function(_UpdatedPassState value) updated,
    required TResult Function(_ErrorPassState value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyPassState value)? empty,
    TResult? Function(_UpdatingPassState value)? updating,
    TResult? Function(_UpdatedPassState value)? updated,
    TResult? Function(_ErrorPassState value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyPassState value)? empty,
    TResult Function(_UpdatingPassState value)? updating,
    TResult Function(_UpdatedPassState value)? updated,
    TResult Function(_ErrorPassState value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _UpdatedPassState extends UpdatePasswordState {
  const factory _UpdatedPassState() = _$UpdatedPassStateImpl;
  const _UpdatedPassState._() : super._();
}

/// @nodoc
abstract class _$$ErrorPassStateImplCopyWith<$Res> {
  factory _$$ErrorPassStateImplCopyWith(_$ErrorPassStateImpl value,
          $Res Function(_$ErrorPassStateImpl) then) =
      __$$ErrorPassStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorPassStateImplCopyWithImpl<$Res>
    extends _$UpdatePasswordStateCopyWithImpl<$Res, _$ErrorPassStateImpl>
    implements _$$ErrorPassStateImplCopyWith<$Res> {
  __$$ErrorPassStateImplCopyWithImpl(
      _$ErrorPassStateImpl _value, $Res Function(_$ErrorPassStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorPassStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorPassStateImpl extends _ErrorPassState {
  const _$ErrorPassStateImpl(
      {this.message = 'Произошла ошибка при обновлении пароля'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'UpdatePasswordState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorPassStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorPassStateImplCopyWith<_$ErrorPassStateImpl> get copyWith =>
      __$$ErrorPassStateImplCopyWithImpl<_$ErrorPassStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() updating,
    required TResult Function() updated,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? updating,
    TResult? Function()? updated,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? updating,
    TResult Function()? updated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyPassState value) empty,
    required TResult Function(_UpdatingPassState value) updating,
    required TResult Function(_UpdatedPassState value) updated,
    required TResult Function(_ErrorPassState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyPassState value)? empty,
    TResult? Function(_UpdatingPassState value)? updating,
    TResult? Function(_UpdatedPassState value)? updated,
    TResult? Function(_ErrorPassState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyPassState value)? empty,
    TResult Function(_UpdatingPassState value)? updating,
    TResult Function(_UpdatedPassState value)? updated,
    TResult Function(_ErrorPassState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorPassState extends UpdatePasswordState {
  const factory _ErrorPassState({final String message}) = _$ErrorPassStateImpl;
  const _ErrorPassState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorPassStateImplCopyWith<_$ErrorPassStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
