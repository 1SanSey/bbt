// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password, String userName)
        register,
    required TResult Function() toInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password, String userName)? register,
    TResult? Function()? toInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password, String userName)? register,
    TResult Function()? toInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationEvent value) register,
    required TResult Function(_ToInitialRegistrationEvent value) toInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationEvent value)? register,
    TResult? Function(_ToInitialRegistrationEvent value)? toInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationEvent value)? register,
    TResult Function(_ToInitialRegistrationEvent value)? toInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegistrationEventImplCopyWith<$Res> {
  factory _$$RegistrationEventImplCopyWith(_$RegistrationEventImpl value,
          $Res Function(_$RegistrationEventImpl) then) =
      __$$RegistrationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String login, String password, String userName});
}

/// @nodoc
class __$$RegistrationEventImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$RegistrationEventImpl>
    implements _$$RegistrationEventImplCopyWith<$Res> {
  __$$RegistrationEventImplCopyWithImpl(_$RegistrationEventImpl _value,
      $Res Function(_$RegistrationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? userName = null,
  }) {
    return _then(_$RegistrationEventImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationEventImpl extends _RegistrationEvent {
  const _$RegistrationEventImpl(
      {required this.login, required this.password, required this.userName})
      : super._();

  @override
  final String login;
  @override
  final String password;
  @override
  final String userName;

  @override
  String toString() {
    return 'RegistrationEvent.register(login: $login, password: $password, userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationEventImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationEventImplCopyWith<_$RegistrationEventImpl> get copyWith =>
      __$$RegistrationEventImplCopyWithImpl<_$RegistrationEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password, String userName)
        register,
    required TResult Function() toInitial,
  }) {
    return register(login, password, userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password, String userName)? register,
    TResult? Function()? toInitial,
  }) {
    return register?.call(login, password, userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password, String userName)? register,
    TResult Function()? toInitial,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(login, password, userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationEvent value) register,
    required TResult Function(_ToInitialRegistrationEvent value) toInitial,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationEvent value)? register,
    TResult? Function(_ToInitialRegistrationEvent value)? toInitial,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationEvent value)? register,
    TResult Function(_ToInitialRegistrationEvent value)? toInitial,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _RegistrationEvent extends RegistrationEvent {
  const factory _RegistrationEvent(
      {required final String login,
      required final String password,
      required final String userName}) = _$RegistrationEventImpl;
  const _RegistrationEvent._() : super._();

  String get login;
  String get password;
  String get userName;
  @JsonKey(ignore: true)
  _$$RegistrationEventImplCopyWith<_$RegistrationEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToInitialRegistrationEventImplCopyWith<$Res> {
  factory _$$ToInitialRegistrationEventImplCopyWith(
          _$ToInitialRegistrationEventImpl value,
          $Res Function(_$ToInitialRegistrationEventImpl) then) =
      __$$ToInitialRegistrationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToInitialRegistrationEventImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res,
        _$ToInitialRegistrationEventImpl>
    implements _$$ToInitialRegistrationEventImplCopyWith<$Res> {
  __$$ToInitialRegistrationEventImplCopyWithImpl(
      _$ToInitialRegistrationEventImpl _value,
      $Res Function(_$ToInitialRegistrationEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToInitialRegistrationEventImpl extends _ToInitialRegistrationEvent {
  const _$ToInitialRegistrationEventImpl() : super._();

  @override
  String toString() {
    return 'RegistrationEvent.toInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToInitialRegistrationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password, String userName)
        register,
    required TResult Function() toInitial,
  }) {
    return toInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password, String userName)? register,
    TResult? Function()? toInitial,
  }) {
    return toInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password, String userName)? register,
    TResult Function()? toInitial,
    required TResult orElse(),
  }) {
    if (toInitial != null) {
      return toInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationEvent value) register,
    required TResult Function(_ToInitialRegistrationEvent value) toInitial,
  }) {
    return toInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationEvent value)? register,
    TResult? Function(_ToInitialRegistrationEvent value)? toInitial,
  }) {
    return toInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationEvent value)? register,
    TResult Function(_ToInitialRegistrationEvent value)? toInitial,
    required TResult orElse(),
  }) {
    if (toInitial != null) {
      return toInitial(this);
    }
    return orElse();
  }
}

abstract class _ToInitialRegistrationEvent extends RegistrationEvent {
  const factory _ToInitialRegistrationEvent() =
      _$ToInitialRegistrationEventImpl;
  const _ToInitialRegistrationEvent._() : super._();
}

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(({String login, String password}) credential)
        successful,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(({String login, String password}) credential)? successful,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(({String login, String password}) credential)? successful,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialRegistrationState value) initial,
    required TResult Function(_InProcessRegistrationState value) inProcess,
    required TResult Function(_SuccessfulRegistrationState value) successful,
    required TResult Function(_ErrorRegistrationState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRegistrationState value)? initial,
    TResult? Function(_InProcessRegistrationState value)? inProcess,
    TResult? Function(_SuccessfulRegistrationState value)? successful,
    TResult? Function(_ErrorRegistrationState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRegistrationState value)? initial,
    TResult Function(_InProcessRegistrationState value)? inProcess,
    TResult Function(_SuccessfulRegistrationState value)? successful,
    TResult Function(_ErrorRegistrationState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialRegistrationStateImplCopyWith<$Res> {
  factory _$$InitialRegistrationStateImplCopyWith(
          _$InitialRegistrationStateImpl value,
          $Res Function(_$InitialRegistrationStateImpl) then) =
      __$$InitialRegistrationStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialRegistrationStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res,
        _$InitialRegistrationStateImpl>
    implements _$$InitialRegistrationStateImplCopyWith<$Res> {
  __$$InitialRegistrationStateImplCopyWithImpl(
      _$InitialRegistrationStateImpl _value,
      $Res Function(_$InitialRegistrationStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialRegistrationStateImpl extends _InitialRegistrationState {
  const _$InitialRegistrationStateImpl() : super._();

  @override
  String toString() {
    return 'RegistrationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialRegistrationStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(({String login, String password}) credential)
        successful,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(({String login, String password}) credential)? successful,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(({String login, String password}) credential)? successful,
    TResult Function(String message)? error,
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
    required TResult Function(_InitialRegistrationState value) initial,
    required TResult Function(_InProcessRegistrationState value) inProcess,
    required TResult Function(_SuccessfulRegistrationState value) successful,
    required TResult Function(_ErrorRegistrationState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRegistrationState value)? initial,
    TResult? Function(_InProcessRegistrationState value)? inProcess,
    TResult? Function(_SuccessfulRegistrationState value)? successful,
    TResult? Function(_ErrorRegistrationState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRegistrationState value)? initial,
    TResult Function(_InProcessRegistrationState value)? inProcess,
    TResult Function(_SuccessfulRegistrationState value)? successful,
    TResult Function(_ErrorRegistrationState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialRegistrationState extends RegistrationState {
  const factory _InitialRegistrationState() = _$InitialRegistrationStateImpl;
  const _InitialRegistrationState._() : super._();
}

/// @nodoc
abstract class _$$InProcessRegistrationStateImplCopyWith<$Res> {
  factory _$$InProcessRegistrationStateImplCopyWith(
          _$InProcessRegistrationStateImpl value,
          $Res Function(_$InProcessRegistrationStateImpl) then) =
      __$$InProcessRegistrationStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProcessRegistrationStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res,
        _$InProcessRegistrationStateImpl>
    implements _$$InProcessRegistrationStateImplCopyWith<$Res> {
  __$$InProcessRegistrationStateImplCopyWithImpl(
      _$InProcessRegistrationStateImpl _value,
      $Res Function(_$InProcessRegistrationStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProcessRegistrationStateImpl extends _InProcessRegistrationState {
  const _$InProcessRegistrationStateImpl() : super._();

  @override
  String toString() {
    return 'RegistrationState.inProcess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProcessRegistrationStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(({String login, String password}) credential)
        successful,
    required TResult Function(String message) error,
  }) {
    return inProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(({String login, String password}) credential)? successful,
    TResult? Function(String message)? error,
  }) {
    return inProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(({String login, String password}) credential)? successful,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialRegistrationState value) initial,
    required TResult Function(_InProcessRegistrationState value) inProcess,
    required TResult Function(_SuccessfulRegistrationState value) successful,
    required TResult Function(_ErrorRegistrationState value) error,
  }) {
    return inProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRegistrationState value)? initial,
    TResult? Function(_InProcessRegistrationState value)? inProcess,
    TResult? Function(_SuccessfulRegistrationState value)? successful,
    TResult? Function(_ErrorRegistrationState value)? error,
  }) {
    return inProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRegistrationState value)? initial,
    TResult Function(_InProcessRegistrationState value)? inProcess,
    TResult Function(_SuccessfulRegistrationState value)? successful,
    TResult Function(_ErrorRegistrationState value)? error,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(this);
    }
    return orElse();
  }
}

abstract class _InProcessRegistrationState extends RegistrationState {
  const factory _InProcessRegistrationState() =
      _$InProcessRegistrationStateImpl;
  const _InProcessRegistrationState._() : super._();
}

/// @nodoc
abstract class _$$SuccessfulRegistrationStateImplCopyWith<$Res> {
  factory _$$SuccessfulRegistrationStateImplCopyWith(
          _$SuccessfulRegistrationStateImpl value,
          $Res Function(_$SuccessfulRegistrationStateImpl) then) =
      __$$SuccessfulRegistrationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({({String login, String password}) credential});
}

/// @nodoc
class __$$SuccessfulRegistrationStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res,
        _$SuccessfulRegistrationStateImpl>
    implements _$$SuccessfulRegistrationStateImplCopyWith<$Res> {
  __$$SuccessfulRegistrationStateImplCopyWithImpl(
      _$SuccessfulRegistrationStateImpl _value,
      $Res Function(_$SuccessfulRegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credential = null,
  }) {
    return _then(_$SuccessfulRegistrationStateImpl(
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as ({String login, String password}),
    ));
  }
}

/// @nodoc

class _$SuccessfulRegistrationStateImpl extends _SuccessfulRegistrationState {
  const _$SuccessfulRegistrationStateImpl({required this.credential})
      : super._();

  @override
  final ({String login, String password}) credential;

  @override
  String toString() {
    return 'RegistrationState.successful(credential: $credential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulRegistrationStateImpl &&
            (identical(other.credential, credential) ||
                other.credential == credential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulRegistrationStateImplCopyWith<_$SuccessfulRegistrationStateImpl>
      get copyWith => __$$SuccessfulRegistrationStateImplCopyWithImpl<
          _$SuccessfulRegistrationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(({String login, String password}) credential)
        successful,
    required TResult Function(String message) error,
  }) {
    return successful(credential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(({String login, String password}) credential)? successful,
    TResult? Function(String message)? error,
  }) {
    return successful?.call(credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(({String login, String password}) credential)? successful,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(credential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialRegistrationState value) initial,
    required TResult Function(_InProcessRegistrationState value) inProcess,
    required TResult Function(_SuccessfulRegistrationState value) successful,
    required TResult Function(_ErrorRegistrationState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRegistrationState value)? initial,
    TResult? Function(_InProcessRegistrationState value)? inProcess,
    TResult? Function(_SuccessfulRegistrationState value)? successful,
    TResult? Function(_ErrorRegistrationState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRegistrationState value)? initial,
    TResult Function(_InProcessRegistrationState value)? inProcess,
    TResult Function(_SuccessfulRegistrationState value)? successful,
    TResult Function(_ErrorRegistrationState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _SuccessfulRegistrationState extends RegistrationState {
  const factory _SuccessfulRegistrationState(
          {required final ({String login, String password}) credential}) =
      _$SuccessfulRegistrationStateImpl;
  const _SuccessfulRegistrationState._() : super._();

  ({String login, String password}) get credential;
  @JsonKey(ignore: true)
  _$$SuccessfulRegistrationStateImplCopyWith<_$SuccessfulRegistrationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorRegistrationStateImplCopyWith<$Res> {
  factory _$$ErrorRegistrationStateImplCopyWith(
          _$ErrorRegistrationStateImpl value,
          $Res Function(_$ErrorRegistrationStateImpl) then) =
      __$$ErrorRegistrationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorRegistrationStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$ErrorRegistrationStateImpl>
    implements _$$ErrorRegistrationStateImplCopyWith<$Res> {
  __$$ErrorRegistrationStateImplCopyWithImpl(
      _$ErrorRegistrationStateImpl _value,
      $Res Function(_$ErrorRegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorRegistrationStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorRegistrationStateImpl extends _ErrorRegistrationState {
  const _$ErrorRegistrationStateImpl({this.message = 'Произошла ошибка'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'RegistrationState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorRegistrationStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorRegistrationStateImplCopyWith<_$ErrorRegistrationStateImpl>
      get copyWith => __$$ErrorRegistrationStateImplCopyWithImpl<
          _$ErrorRegistrationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(({String login, String password}) credential)
        successful,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(({String login, String password}) credential)? successful,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(({String login, String password}) credential)? successful,
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
    required TResult Function(_InitialRegistrationState value) initial,
    required TResult Function(_InProcessRegistrationState value) inProcess,
    required TResult Function(_SuccessfulRegistrationState value) successful,
    required TResult Function(_ErrorRegistrationState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialRegistrationState value)? initial,
    TResult? Function(_InProcessRegistrationState value)? inProcess,
    TResult? Function(_SuccessfulRegistrationState value)? successful,
    TResult? Function(_ErrorRegistrationState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialRegistrationState value)? initial,
    TResult Function(_InProcessRegistrationState value)? inProcess,
    TResult Function(_SuccessfulRegistrationState value)? successful,
    TResult Function(_ErrorRegistrationState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorRegistrationState extends RegistrationState {
  const factory _ErrorRegistrationState({final String message}) =
      _$ErrorRegistrationStateImpl;
  const _ErrorRegistrationState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorRegistrationStateImplCopyWith<_$ErrorRegistrationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
