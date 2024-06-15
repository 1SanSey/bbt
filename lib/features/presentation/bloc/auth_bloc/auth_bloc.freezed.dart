// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) logIn,
    required TResult Function() logOut,
    required TResult Function(String newName) updateName,
    required TResult Function(String newPhoto) updatePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function(String newName)? updateName,
    TResult? Function(String newPhoto)? updatePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? logIn,
    TResult Function()? logOut,
    TResult Function(String newName)? updateName,
    TResult Function(String newPhoto)? updatePhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInAuthEvent value) logIn,
    required TResult Function(_LogOutAuthEvent value) logOut,
    required TResult Function(_UpdateNameAuthEvent value) updateName,
    required TResult Function(_UpdatePhotoAuthEvent value) updatePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInAuthEvent value)? logIn,
    TResult? Function(_LogOutAuthEvent value)? logOut,
    TResult? Function(_UpdateNameAuthEvent value)? updateName,
    TResult? Function(_UpdatePhotoAuthEvent value)? updatePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInAuthEvent value)? logIn,
    TResult Function(_LogOutAuthEvent value)? logOut,
    TResult Function(_UpdateNameAuthEvent value)? updateName,
    TResult Function(_UpdatePhotoAuthEvent value)? updatePhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogInAuthEventImplCopyWith<$Res> {
  factory _$$LogInAuthEventImplCopyWith(_$LogInAuthEventImpl value,
          $Res Function(_$LogInAuthEventImpl) then) =
      __$$LogInAuthEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$LogInAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogInAuthEventImpl>
    implements _$$LogInAuthEventImplCopyWith<$Res> {
  __$$LogInAuthEventImplCopyWithImpl(
      _$LogInAuthEventImpl _value, $Res Function(_$LogInAuthEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$LogInAuthEventImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogInAuthEventImpl extends _LogInAuthEvent {
  const _$LogInAuthEventImpl({required this.login, required this.password})
      : super._();

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.logIn(login: $login, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInAuthEventImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInAuthEventImplCopyWith<_$LogInAuthEventImpl> get copyWith =>
      __$$LogInAuthEventImplCopyWithImpl<_$LogInAuthEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) logIn,
    required TResult Function() logOut,
    required TResult Function(String newName) updateName,
    required TResult Function(String newPhoto) updatePhoto,
  }) {
    return logIn(login, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function(String newName)? updateName,
    TResult? Function(String newPhoto)? updatePhoto,
  }) {
    return logIn?.call(login, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? logIn,
    TResult Function()? logOut,
    TResult Function(String newName)? updateName,
    TResult Function(String newPhoto)? updatePhoto,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(login, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInAuthEvent value) logIn,
    required TResult Function(_LogOutAuthEvent value) logOut,
    required TResult Function(_UpdateNameAuthEvent value) updateName,
    required TResult Function(_UpdatePhotoAuthEvent value) updatePhoto,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInAuthEvent value)? logIn,
    TResult? Function(_LogOutAuthEvent value)? logOut,
    TResult? Function(_UpdateNameAuthEvent value)? updateName,
    TResult? Function(_UpdatePhotoAuthEvent value)? updatePhoto,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInAuthEvent value)? logIn,
    TResult Function(_LogOutAuthEvent value)? logOut,
    TResult Function(_UpdateNameAuthEvent value)? updateName,
    TResult Function(_UpdatePhotoAuthEvent value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _LogInAuthEvent extends AuthEvent {
  const factory _LogInAuthEvent(
      {required final String login,
      required final String password}) = _$LogInAuthEventImpl;
  const _LogInAuthEvent._() : super._();

  String get login;
  String get password;
  @JsonKey(ignore: true)
  _$$LogInAuthEventImplCopyWith<_$LogInAuthEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutAuthEventImplCopyWith<$Res> {
  factory _$$LogOutAuthEventImplCopyWith(_$LogOutAuthEventImpl value,
          $Res Function(_$LogOutAuthEventImpl) then) =
      __$$LogOutAuthEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutAuthEventImpl>
    implements _$$LogOutAuthEventImplCopyWith<$Res> {
  __$$LogOutAuthEventImplCopyWithImpl(
      _$LogOutAuthEventImpl _value, $Res Function(_$LogOutAuthEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutAuthEventImpl extends _LogOutAuthEvent {
  const _$LogOutAuthEventImpl() : super._();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutAuthEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) logIn,
    required TResult Function() logOut,
    required TResult Function(String newName) updateName,
    required TResult Function(String newPhoto) updatePhoto,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function(String newName)? updateName,
    TResult? Function(String newPhoto)? updatePhoto,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? logIn,
    TResult Function()? logOut,
    TResult Function(String newName)? updateName,
    TResult Function(String newPhoto)? updatePhoto,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInAuthEvent value) logIn,
    required TResult Function(_LogOutAuthEvent value) logOut,
    required TResult Function(_UpdateNameAuthEvent value) updateName,
    required TResult Function(_UpdatePhotoAuthEvent value) updatePhoto,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInAuthEvent value)? logIn,
    TResult? Function(_LogOutAuthEvent value)? logOut,
    TResult? Function(_UpdateNameAuthEvent value)? updateName,
    TResult? Function(_UpdatePhotoAuthEvent value)? updatePhoto,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInAuthEvent value)? logIn,
    TResult Function(_LogOutAuthEvent value)? logOut,
    TResult Function(_UpdateNameAuthEvent value)? updateName,
    TResult Function(_UpdatePhotoAuthEvent value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOutAuthEvent extends AuthEvent {
  const factory _LogOutAuthEvent() = _$LogOutAuthEventImpl;
  const _LogOutAuthEvent._() : super._();
}

/// @nodoc
abstract class _$$UpdateNameAuthEventImplCopyWith<$Res> {
  factory _$$UpdateNameAuthEventImplCopyWith(_$UpdateNameAuthEventImpl value,
          $Res Function(_$UpdateNameAuthEventImpl) then) =
      __$$UpdateNameAuthEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newName});
}

/// @nodoc
class __$$UpdateNameAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateNameAuthEventImpl>
    implements _$$UpdateNameAuthEventImplCopyWith<$Res> {
  __$$UpdateNameAuthEventImplCopyWithImpl(_$UpdateNameAuthEventImpl _value,
      $Res Function(_$UpdateNameAuthEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newName = null,
  }) {
    return _then(_$UpdateNameAuthEventImpl(
      null == newName
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNameAuthEventImpl extends _UpdateNameAuthEvent {
  const _$UpdateNameAuthEventImpl(this.newName) : super._();

  @override
  final String newName;

  @override
  String toString() {
    return 'AuthEvent.updateName(newName: $newName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNameAuthEventImpl &&
            (identical(other.newName, newName) || other.newName == newName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNameAuthEventImplCopyWith<_$UpdateNameAuthEventImpl> get copyWith =>
      __$$UpdateNameAuthEventImplCopyWithImpl<_$UpdateNameAuthEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) logIn,
    required TResult Function() logOut,
    required TResult Function(String newName) updateName,
    required TResult Function(String newPhoto) updatePhoto,
  }) {
    return updateName(newName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function(String newName)? updateName,
    TResult? Function(String newPhoto)? updatePhoto,
  }) {
    return updateName?.call(newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? logIn,
    TResult Function()? logOut,
    TResult Function(String newName)? updateName,
    TResult Function(String newPhoto)? updatePhoto,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(newName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInAuthEvent value) logIn,
    required TResult Function(_LogOutAuthEvent value) logOut,
    required TResult Function(_UpdateNameAuthEvent value) updateName,
    required TResult Function(_UpdatePhotoAuthEvent value) updatePhoto,
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInAuthEvent value)? logIn,
    TResult? Function(_LogOutAuthEvent value)? logOut,
    TResult? Function(_UpdateNameAuthEvent value)? updateName,
    TResult? Function(_UpdatePhotoAuthEvent value)? updatePhoto,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInAuthEvent value)? logIn,
    TResult Function(_LogOutAuthEvent value)? logOut,
    TResult Function(_UpdateNameAuthEvent value)? updateName,
    TResult Function(_UpdatePhotoAuthEvent value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class _UpdateNameAuthEvent extends AuthEvent {
  const factory _UpdateNameAuthEvent(final String newName) =
      _$UpdateNameAuthEventImpl;
  const _UpdateNameAuthEvent._() : super._();

  String get newName;
  @JsonKey(ignore: true)
  _$$UpdateNameAuthEventImplCopyWith<_$UpdateNameAuthEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePhotoAuthEventImplCopyWith<$Res> {
  factory _$$UpdatePhotoAuthEventImplCopyWith(_$UpdatePhotoAuthEventImpl value,
          $Res Function(_$UpdatePhotoAuthEventImpl) then) =
      __$$UpdatePhotoAuthEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPhoto});
}

/// @nodoc
class __$$UpdatePhotoAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdatePhotoAuthEventImpl>
    implements _$$UpdatePhotoAuthEventImplCopyWith<$Res> {
  __$$UpdatePhotoAuthEventImplCopyWithImpl(_$UpdatePhotoAuthEventImpl _value,
      $Res Function(_$UpdatePhotoAuthEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPhoto = null,
  }) {
    return _then(_$UpdatePhotoAuthEventImpl(
      null == newPhoto
          ? _value.newPhoto
          : newPhoto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePhotoAuthEventImpl extends _UpdatePhotoAuthEvent {
  const _$UpdatePhotoAuthEventImpl(this.newPhoto) : super._();

  @override
  final String newPhoto;

  @override
  String toString() {
    return 'AuthEvent.updatePhoto(newPhoto: $newPhoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePhotoAuthEventImpl &&
            (identical(other.newPhoto, newPhoto) ||
                other.newPhoto == newPhoto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPhoto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePhotoAuthEventImplCopyWith<_$UpdatePhotoAuthEventImpl>
      get copyWith =>
          __$$UpdatePhotoAuthEventImplCopyWithImpl<_$UpdatePhotoAuthEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) logIn,
    required TResult Function() logOut,
    required TResult Function(String newName) updateName,
    required TResult Function(String newPhoto) updatePhoto,
  }) {
    return updatePhoto(newPhoto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? logIn,
    TResult? Function()? logOut,
    TResult? Function(String newName)? updateName,
    TResult? Function(String newPhoto)? updatePhoto,
  }) {
    return updatePhoto?.call(newPhoto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? logIn,
    TResult Function()? logOut,
    TResult Function(String newName)? updateName,
    TResult Function(String newPhoto)? updatePhoto,
    required TResult orElse(),
  }) {
    if (updatePhoto != null) {
      return updatePhoto(newPhoto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInAuthEvent value) logIn,
    required TResult Function(_LogOutAuthEvent value) logOut,
    required TResult Function(_UpdateNameAuthEvent value) updateName,
    required TResult Function(_UpdatePhotoAuthEvent value) updatePhoto,
  }) {
    return updatePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInAuthEvent value)? logIn,
    TResult? Function(_LogOutAuthEvent value)? logOut,
    TResult? Function(_UpdateNameAuthEvent value)? updateName,
    TResult? Function(_UpdatePhotoAuthEvent value)? updatePhoto,
  }) {
    return updatePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInAuthEvent value)? logIn,
    TResult Function(_LogOutAuthEvent value)? logOut,
    TResult Function(_UpdateNameAuthEvent value)? updateName,
    TResult Function(_UpdatePhotoAuthEvent value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (updatePhoto != null) {
      return updatePhoto(this);
    }
    return orElse();
  }
}

abstract class _UpdatePhotoAuthEvent extends AuthEvent {
  const factory _UpdatePhotoAuthEvent(final String newPhoto) =
      _$UpdatePhotoAuthEventImpl;
  const _UpdatePhotoAuthEvent._() : super._();

  String get newPhoto;
  @JsonKey(ignore: true)
  _$$UpdatePhotoAuthEventImplCopyWith<_$UpdatePhotoAuthEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'authenticated':
      return _AuthenticatedAuthState.fromJson(json);
    case 'inProcess':
      return _InProcessAuthState.fromJson(json);
    case 'notAuthenticated':
      return _NotAuthenticatedAuthState.fromJson(json);
    case 'error':
      return _ErrorAuthState.fromJson(json);
    case 'successful':
      return _SuccessfulAuthState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthState {
  UserEntity get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) authenticated,
    required TResult Function(UserEntity user) inProcess,
    required TResult Function(UserEntity user) notAuthenticated,
    required TResult Function(UserEntity user, String message) error,
    required TResult Function(UserEntity user) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? authenticated,
    TResult? Function(UserEntity user)? inProcess,
    TResult? Function(UserEntity user)? notAuthenticated,
    TResult? Function(UserEntity user, String message)? error,
    TResult? Function(UserEntity user)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? authenticated,
    TResult Function(UserEntity user)? inProcess,
    TResult Function(UserEntity user)? notAuthenticated,
    TResult Function(UserEntity user, String message)? error,
    TResult Function(UserEntity user)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthState value) authenticated,
    required TResult Function(_InProcessAuthState value) inProcess,
    required TResult Function(_NotAuthenticatedAuthState value)
        notAuthenticated,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_SuccessfulAuthState value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedAuthState value)? authenticated,
    TResult? Function(_InProcessAuthState value)? inProcess,
    TResult? Function(_NotAuthenticatedAuthState value)? notAuthenticated,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_SuccessfulAuthState value)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthState value)? authenticated,
    TResult Function(_InProcessAuthState value)? inProcess,
    TResult Function(_NotAuthenticatedAuthState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_SuccessfulAuthState value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthenticatedAuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthenticatedAuthStateImplCopyWith(
          _$AuthenticatedAuthStateImpl value,
          $Res Function(_$AuthenticatedAuthStateImpl) then) =
      __$$AuthenticatedAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity user});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticatedAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedAuthStateImpl>
    implements _$$AuthenticatedAuthStateImplCopyWith<$Res> {
  __$$AuthenticatedAuthStateImplCopyWithImpl(
      _$AuthenticatedAuthStateImpl _value,
      $Res Function(_$AuthenticatedAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticatedAuthStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticatedAuthStateImpl extends _AuthenticatedAuthState {
  const _$AuthenticatedAuthStateImpl({required this.user, final String? $type})
      : $type = $type ?? 'authenticated',
        super._();

  factory _$AuthenticatedAuthStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatedAuthStateImplFromJson(json);

  @override
  final UserEntity user;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedAuthStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedAuthStateImplCopyWith<_$AuthenticatedAuthStateImpl>
      get copyWith => __$$AuthenticatedAuthStateImplCopyWithImpl<
          _$AuthenticatedAuthStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) authenticated,
    required TResult Function(UserEntity user) inProcess,
    required TResult Function(UserEntity user) notAuthenticated,
    required TResult Function(UserEntity user, String message) error,
    required TResult Function(UserEntity user) successful,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? authenticated,
    TResult? Function(UserEntity user)? inProcess,
    TResult? Function(UserEntity user)? notAuthenticated,
    TResult? Function(UserEntity user, String message)? error,
    TResult? Function(UserEntity user)? successful,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? authenticated,
    TResult Function(UserEntity user)? inProcess,
    TResult Function(UserEntity user)? notAuthenticated,
    TResult Function(UserEntity user, String message)? error,
    TResult Function(UserEntity user)? successful,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthState value) authenticated,
    required TResult Function(_InProcessAuthState value) inProcess,
    required TResult Function(_NotAuthenticatedAuthState value)
        notAuthenticated,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_SuccessfulAuthState value) successful,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedAuthState value)? authenticated,
    TResult? Function(_InProcessAuthState value)? inProcess,
    TResult? Function(_NotAuthenticatedAuthState value)? notAuthenticated,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_SuccessfulAuthState value)? successful,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthState value)? authenticated,
    TResult Function(_InProcessAuthState value)? inProcess,
    TResult Function(_NotAuthenticatedAuthState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_SuccessfulAuthState value)? successful,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatedAuthStateImplToJson(
      this,
    );
  }
}

abstract class _AuthenticatedAuthState extends AuthState {
  const factory _AuthenticatedAuthState({required final UserEntity user}) =
      _$AuthenticatedAuthStateImpl;
  const _AuthenticatedAuthState._() : super._();

  factory _AuthenticatedAuthState.fromJson(Map<String, dynamic> json) =
      _$AuthenticatedAuthStateImpl.fromJson;

  @override
  UserEntity get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticatedAuthStateImplCopyWith<_$AuthenticatedAuthStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProcessAuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InProcessAuthStateImplCopyWith(_$InProcessAuthStateImpl value,
          $Res Function(_$InProcessAuthStateImpl) then) =
      __$$InProcessAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity user});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$InProcessAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InProcessAuthStateImpl>
    implements _$$InProcessAuthStateImplCopyWith<$Res> {
  __$$InProcessAuthStateImplCopyWithImpl(_$InProcessAuthStateImpl _value,
      $Res Function(_$InProcessAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$InProcessAuthStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InProcessAuthStateImpl extends _InProcessAuthState {
  const _$InProcessAuthStateImpl({required this.user, final String? $type})
      : $type = $type ?? 'inProcess',
        super._();

  factory _$InProcessAuthStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$InProcessAuthStateImplFromJson(json);

  @override
  final UserEntity user;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.inProcess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProcessAuthStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InProcessAuthStateImplCopyWith<_$InProcessAuthStateImpl> get copyWith =>
      __$$InProcessAuthStateImplCopyWithImpl<_$InProcessAuthStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) authenticated,
    required TResult Function(UserEntity user) inProcess,
    required TResult Function(UserEntity user) notAuthenticated,
    required TResult Function(UserEntity user, String message) error,
    required TResult Function(UserEntity user) successful,
  }) {
    return inProcess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? authenticated,
    TResult? Function(UserEntity user)? inProcess,
    TResult? Function(UserEntity user)? notAuthenticated,
    TResult? Function(UserEntity user, String message)? error,
    TResult? Function(UserEntity user)? successful,
  }) {
    return inProcess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? authenticated,
    TResult Function(UserEntity user)? inProcess,
    TResult Function(UserEntity user)? notAuthenticated,
    TResult Function(UserEntity user, String message)? error,
    TResult Function(UserEntity user)? successful,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthState value) authenticated,
    required TResult Function(_InProcessAuthState value) inProcess,
    required TResult Function(_NotAuthenticatedAuthState value)
        notAuthenticated,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_SuccessfulAuthState value) successful,
  }) {
    return inProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedAuthState value)? authenticated,
    TResult? Function(_InProcessAuthState value)? inProcess,
    TResult? Function(_NotAuthenticatedAuthState value)? notAuthenticated,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_SuccessfulAuthState value)? successful,
  }) {
    return inProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthState value)? authenticated,
    TResult Function(_InProcessAuthState value)? inProcess,
    TResult Function(_NotAuthenticatedAuthState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_SuccessfulAuthState value)? successful,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InProcessAuthStateImplToJson(
      this,
    );
  }
}

abstract class _InProcessAuthState extends AuthState {
  const factory _InProcessAuthState({required final UserEntity user}) =
      _$InProcessAuthStateImpl;
  const _InProcessAuthState._() : super._();

  factory _InProcessAuthState.fromJson(Map<String, dynamic> json) =
      _$InProcessAuthStateImpl.fromJson;

  @override
  UserEntity get user;
  @override
  @JsonKey(ignore: true)
  _$$InProcessAuthStateImplCopyWith<_$InProcessAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotAuthenticatedAuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$NotAuthenticatedAuthStateImplCopyWith(
          _$NotAuthenticatedAuthStateImpl value,
          $Res Function(_$NotAuthenticatedAuthStateImpl) then) =
      __$$NotAuthenticatedAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity user});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$NotAuthenticatedAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NotAuthenticatedAuthStateImpl>
    implements _$$NotAuthenticatedAuthStateImplCopyWith<$Res> {
  __$$NotAuthenticatedAuthStateImplCopyWithImpl(
      _$NotAuthenticatedAuthStateImpl _value,
      $Res Function(_$NotAuthenticatedAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$NotAuthenticatedAuthStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotAuthenticatedAuthStateImpl extends _NotAuthenticatedAuthState {
  const _$NotAuthenticatedAuthStateImpl(
      {required this.user, final String? $type})
      : $type = $type ?? 'notAuthenticated',
        super._();

  factory _$NotAuthenticatedAuthStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotAuthenticatedAuthStateImplFromJson(json);

  @override
  final UserEntity user;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.notAuthenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotAuthenticatedAuthStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotAuthenticatedAuthStateImplCopyWith<_$NotAuthenticatedAuthStateImpl>
      get copyWith => __$$NotAuthenticatedAuthStateImplCopyWithImpl<
          _$NotAuthenticatedAuthStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) authenticated,
    required TResult Function(UserEntity user) inProcess,
    required TResult Function(UserEntity user) notAuthenticated,
    required TResult Function(UserEntity user, String message) error,
    required TResult Function(UserEntity user) successful,
  }) {
    return notAuthenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? authenticated,
    TResult? Function(UserEntity user)? inProcess,
    TResult? Function(UserEntity user)? notAuthenticated,
    TResult? Function(UserEntity user, String message)? error,
    TResult? Function(UserEntity user)? successful,
  }) {
    return notAuthenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? authenticated,
    TResult Function(UserEntity user)? inProcess,
    TResult Function(UserEntity user)? notAuthenticated,
    TResult Function(UserEntity user, String message)? error,
    TResult Function(UserEntity user)? successful,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthState value) authenticated,
    required TResult Function(_InProcessAuthState value) inProcess,
    required TResult Function(_NotAuthenticatedAuthState value)
        notAuthenticated,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_SuccessfulAuthState value) successful,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedAuthState value)? authenticated,
    TResult? Function(_InProcessAuthState value)? inProcess,
    TResult? Function(_NotAuthenticatedAuthState value)? notAuthenticated,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_SuccessfulAuthState value)? successful,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthState value)? authenticated,
    TResult Function(_InProcessAuthState value)? inProcess,
    TResult Function(_NotAuthenticatedAuthState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_SuccessfulAuthState value)? successful,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotAuthenticatedAuthStateImplToJson(
      this,
    );
  }
}

abstract class _NotAuthenticatedAuthState extends AuthState {
  const factory _NotAuthenticatedAuthState({required final UserEntity user}) =
      _$NotAuthenticatedAuthStateImpl;
  const _NotAuthenticatedAuthState._() : super._();

  factory _NotAuthenticatedAuthState.fromJson(Map<String, dynamic> json) =
      _$NotAuthenticatedAuthStateImpl.fromJson;

  @override
  UserEntity get user;
  @override
  @JsonKey(ignore: true)
  _$$NotAuthenticatedAuthStateImplCopyWith<_$NotAuthenticatedAuthStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorAuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$ErrorAuthStateImplCopyWith(_$ErrorAuthStateImpl value,
          $Res Function(_$ErrorAuthStateImpl) then) =
      __$$ErrorAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity user, String message});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$ErrorAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorAuthStateImpl>
    implements _$$ErrorAuthStateImplCopyWith<$Res> {
  __$$ErrorAuthStateImplCopyWithImpl(
      _$ErrorAuthStateImpl _value, $Res Function(_$ErrorAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? message = null,
  }) {
    return _then(_$ErrorAuthStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorAuthStateImpl extends _ErrorAuthState {
  const _$ErrorAuthStateImpl(
      {required this.user,
      this.message = 'Произошла ошибка',
      final String? $type})
      : $type = $type ?? 'error',
        super._();

  factory _$ErrorAuthStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorAuthStateImplFromJson(json);

  @override
  final UserEntity user;
  @override
  @JsonKey()
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.error(user: $user, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAuthStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAuthStateImplCopyWith<_$ErrorAuthStateImpl> get copyWith =>
      __$$ErrorAuthStateImplCopyWithImpl<_$ErrorAuthStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) authenticated,
    required TResult Function(UserEntity user) inProcess,
    required TResult Function(UserEntity user) notAuthenticated,
    required TResult Function(UserEntity user, String message) error,
    required TResult Function(UserEntity user) successful,
  }) {
    return error(user, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? authenticated,
    TResult? Function(UserEntity user)? inProcess,
    TResult? Function(UserEntity user)? notAuthenticated,
    TResult? Function(UserEntity user, String message)? error,
    TResult? Function(UserEntity user)? successful,
  }) {
    return error?.call(user, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? authenticated,
    TResult Function(UserEntity user)? inProcess,
    TResult Function(UserEntity user)? notAuthenticated,
    TResult Function(UserEntity user, String message)? error,
    TResult Function(UserEntity user)? successful,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(user, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthState value) authenticated,
    required TResult Function(_InProcessAuthState value) inProcess,
    required TResult Function(_NotAuthenticatedAuthState value)
        notAuthenticated,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_SuccessfulAuthState value) successful,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedAuthState value)? authenticated,
    TResult? Function(_InProcessAuthState value)? inProcess,
    TResult? Function(_NotAuthenticatedAuthState value)? notAuthenticated,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_SuccessfulAuthState value)? successful,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthState value)? authenticated,
    TResult Function(_InProcessAuthState value)? inProcess,
    TResult Function(_NotAuthenticatedAuthState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_SuccessfulAuthState value)? successful,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorAuthStateImplToJson(
      this,
    );
  }
}

abstract class _ErrorAuthState extends AuthState {
  const factory _ErrorAuthState(
      {required final UserEntity user,
      final String message}) = _$ErrorAuthStateImpl;
  const _ErrorAuthState._() : super._();

  factory _ErrorAuthState.fromJson(Map<String, dynamic> json) =
      _$ErrorAuthStateImpl.fromJson;

  @override
  UserEntity get user;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorAuthStateImplCopyWith<_$ErrorAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessfulAuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$SuccessfulAuthStateImplCopyWith(_$SuccessfulAuthStateImpl value,
          $Res Function(_$SuccessfulAuthStateImpl) then) =
      __$$SuccessfulAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity user});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$SuccessfulAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessfulAuthStateImpl>
    implements _$$SuccessfulAuthStateImplCopyWith<$Res> {
  __$$SuccessfulAuthStateImplCopyWithImpl(_$SuccessfulAuthStateImpl _value,
      $Res Function(_$SuccessfulAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SuccessfulAuthStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessfulAuthStateImpl extends _SuccessfulAuthState {
  const _$SuccessfulAuthStateImpl({required this.user, final String? $type})
      : $type = $type ?? 'successful',
        super._();

  factory _$SuccessfulAuthStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessfulAuthStateImplFromJson(json);

  @override
  final UserEntity user;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.successful(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulAuthStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulAuthStateImplCopyWith<_$SuccessfulAuthStateImpl> get copyWith =>
      __$$SuccessfulAuthStateImplCopyWithImpl<_$SuccessfulAuthStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity user) authenticated,
    required TResult Function(UserEntity user) inProcess,
    required TResult Function(UserEntity user) notAuthenticated,
    required TResult Function(UserEntity user, String message) error,
    required TResult Function(UserEntity user) successful,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity user)? authenticated,
    TResult? Function(UserEntity user)? inProcess,
    TResult? Function(UserEntity user)? notAuthenticated,
    TResult? Function(UserEntity user, String message)? error,
    TResult? Function(UserEntity user)? successful,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity user)? authenticated,
    TResult Function(UserEntity user)? inProcess,
    TResult Function(UserEntity user)? notAuthenticated,
    TResult Function(UserEntity user, String message)? error,
    TResult Function(UserEntity user)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthState value) authenticated,
    required TResult Function(_InProcessAuthState value) inProcess,
    required TResult Function(_NotAuthenticatedAuthState value)
        notAuthenticated,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_SuccessfulAuthState value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedAuthState value)? authenticated,
    TResult? Function(_InProcessAuthState value)? inProcess,
    TResult? Function(_NotAuthenticatedAuthState value)? notAuthenticated,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_SuccessfulAuthState value)? successful,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthState value)? authenticated,
    TResult Function(_InProcessAuthState value)? inProcess,
    TResult Function(_NotAuthenticatedAuthState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_SuccessfulAuthState value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessfulAuthStateImplToJson(
      this,
    );
  }
}

abstract class _SuccessfulAuthState extends AuthState {
  const factory _SuccessfulAuthState({required final UserEntity user}) =
      _$SuccessfulAuthStateImpl;
  const _SuccessfulAuthState._() : super._();

  factory _SuccessfulAuthState.fromJson(Map<String, dynamic> json) =
      _$SuccessfulAuthStateImpl.fromJson;

  @override
  UserEntity get user;
  @override
  @JsonKey(ignore: true)
  _$$SuccessfulAuthStateImplCopyWith<_$SuccessfulAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
