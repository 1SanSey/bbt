// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetUserEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetUserEventCopyWith<GetUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserEventCopyWith<$Res> {
  factory $GetUserEventCopyWith(
          GetUserEvent value, $Res Function(GetUserEvent) then) =
      _$GetUserEventCopyWithImpl<$Res, GetUserEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$GetUserEventCopyWithImpl<$Res, $Val extends GetUserEvent>
    implements $GetUserEventCopyWith<$Res> {
  _$GetUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchUserEventImplCopyWith<$Res>
    implements $GetUserEventCopyWith<$Res> {
  factory _$$FetchUserEventImplCopyWith(_$FetchUserEventImpl value,
          $Res Function(_$FetchUserEventImpl) then) =
      __$$FetchUserEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$FetchUserEventImplCopyWithImpl<$Res>
    extends _$GetUserEventCopyWithImpl<$Res, _$FetchUserEventImpl>
    implements _$$FetchUserEventImplCopyWith<$Res> {
  __$$FetchUserEventImplCopyWithImpl(
      _$FetchUserEventImpl _value, $Res Function(_$FetchUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchUserEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchUserEventImpl extends _FetchUserEvent {
  const _$FetchUserEventImpl(this.id) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'GetUserEvent.fetch(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUserEventImplCopyWith<_$FetchUserEventImpl> get copyWith =>
      __$$FetchUserEventImplCopyWithImpl<_$FetchUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetch,
  }) {
    return fetch(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetch,
  }) {
    return fetch?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchUserEvent extends GetUserEvent {
  const factory _FetchUserEvent(final String id) = _$FetchUserEventImpl;
  const _FetchUserEvent._() : super._();

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$FetchUserEventImplCopyWith<_$FetchUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UserEntity user) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(UserEntity user)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyUserState value) empty,
    required TResult Function(_LoadingUserState value) loading,
    required TResult Function(_LoadedUserState value) loaded,
    required TResult Function(_ErrorUserState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUserState value)? empty,
    TResult? Function(_LoadingUserState value)? loading,
    TResult? Function(_LoadedUserState value)? loaded,
    TResult? Function(_ErrorUserState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUserState value)? empty,
    TResult Function(_LoadingUserState value)? loading,
    TResult Function(_LoadedUserState value)? loaded,
    TResult Function(_ErrorUserState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserStateCopyWith<$Res> {
  factory $GetUserStateCopyWith(
          GetUserState value, $Res Function(GetUserState) then) =
      _$GetUserStateCopyWithImpl<$Res, GetUserState>;
}

/// @nodoc
class _$GetUserStateCopyWithImpl<$Res, $Val extends GetUserState>
    implements $GetUserStateCopyWith<$Res> {
  _$GetUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyUserStateImplCopyWith<$Res> {
  factory _$$EmptyUserStateImplCopyWith(_$EmptyUserStateImpl value,
          $Res Function(_$EmptyUserStateImpl) then) =
      __$$EmptyUserStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyUserStateImplCopyWithImpl<$Res>
    extends _$GetUserStateCopyWithImpl<$Res, _$EmptyUserStateImpl>
    implements _$$EmptyUserStateImplCopyWith<$Res> {
  __$$EmptyUserStateImplCopyWithImpl(
      _$EmptyUserStateImpl _value, $Res Function(_$EmptyUserStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyUserStateImpl extends _EmptyUserState {
  const _$EmptyUserStateImpl() : super._();

  @override
  String toString() {
    return 'GetUserState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyUserStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UserEntity user) loaded,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(UserEntity user)? loaded,
    TResult? Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
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
    required TResult Function(_EmptyUserState value) empty,
    required TResult Function(_LoadingUserState value) loading,
    required TResult Function(_LoadedUserState value) loaded,
    required TResult Function(_ErrorUserState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUserState value)? empty,
    TResult? Function(_LoadingUserState value)? loading,
    TResult? Function(_LoadedUserState value)? loaded,
    TResult? Function(_ErrorUserState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUserState value)? empty,
    TResult Function(_LoadingUserState value)? loading,
    TResult Function(_LoadedUserState value)? loaded,
    TResult Function(_ErrorUserState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyUserState extends GetUserState {
  const factory _EmptyUserState() = _$EmptyUserStateImpl;
  const _EmptyUserState._() : super._();
}

/// @nodoc
abstract class _$$LoadingUserStateImplCopyWith<$Res> {
  factory _$$LoadingUserStateImplCopyWith(_$LoadingUserStateImpl value,
          $Res Function(_$LoadingUserStateImpl) then) =
      __$$LoadingUserStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingUserStateImplCopyWithImpl<$Res>
    extends _$GetUserStateCopyWithImpl<$Res, _$LoadingUserStateImpl>
    implements _$$LoadingUserStateImplCopyWith<$Res> {
  __$$LoadingUserStateImplCopyWithImpl(_$LoadingUserStateImpl _value,
      $Res Function(_$LoadingUserStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingUserStateImpl extends _LoadingUserState {
  const _$LoadingUserStateImpl() : super._();

  @override
  String toString() {
    return 'GetUserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingUserStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UserEntity user) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(UserEntity user)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_EmptyUserState value) empty,
    required TResult Function(_LoadingUserState value) loading,
    required TResult Function(_LoadedUserState value) loaded,
    required TResult Function(_ErrorUserState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUserState value)? empty,
    TResult? Function(_LoadingUserState value)? loading,
    TResult? Function(_LoadedUserState value)? loaded,
    TResult? Function(_ErrorUserState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUserState value)? empty,
    TResult Function(_LoadingUserState value)? loading,
    TResult Function(_LoadedUserState value)? loaded,
    TResult Function(_ErrorUserState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingUserState extends GetUserState {
  const factory _LoadingUserState() = _$LoadingUserStateImpl;
  const _LoadingUserState._() : super._();
}

/// @nodoc
abstract class _$$LoadedUserStateImplCopyWith<$Res> {
  factory _$$LoadedUserStateImplCopyWith(_$LoadedUserStateImpl value,
          $Res Function(_$LoadedUserStateImpl) then) =
      __$$LoadedUserStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoadedUserStateImplCopyWithImpl<$Res>
    extends _$GetUserStateCopyWithImpl<$Res, _$LoadedUserStateImpl>
    implements _$$LoadedUserStateImplCopyWith<$Res> {
  __$$LoadedUserStateImplCopyWithImpl(
      _$LoadedUserStateImpl _value, $Res Function(_$LoadedUserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoadedUserStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoadedUserStateImpl extends _LoadedUserState {
  const _$LoadedUserStateImpl({required this.user}) : super._();

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'GetUserState.loaded(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedUserStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedUserStateImplCopyWith<_$LoadedUserStateImpl> get copyWith =>
      __$$LoadedUserStateImplCopyWithImpl<_$LoadedUserStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UserEntity user) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(UserEntity user)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyUserState value) empty,
    required TResult Function(_LoadingUserState value) loading,
    required TResult Function(_LoadedUserState value) loaded,
    required TResult Function(_ErrorUserState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUserState value)? empty,
    TResult? Function(_LoadingUserState value)? loading,
    TResult? Function(_LoadedUserState value)? loaded,
    TResult? Function(_ErrorUserState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUserState value)? empty,
    TResult Function(_LoadingUserState value)? loading,
    TResult Function(_LoadedUserState value)? loaded,
    TResult Function(_ErrorUserState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedUserState extends GetUserState {
  const factory _LoadedUserState({required final UserEntity user}) =
      _$LoadedUserStateImpl;
  const _LoadedUserState._() : super._();

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$LoadedUserStateImplCopyWith<_$LoadedUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorUserStateImplCopyWith<$Res> {
  factory _$$ErrorUserStateImplCopyWith(_$ErrorUserStateImpl value,
          $Res Function(_$ErrorUserStateImpl) then) =
      __$$ErrorUserStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorUserStateImplCopyWithImpl<$Res>
    extends _$GetUserStateCopyWithImpl<$Res, _$ErrorUserStateImpl>
    implements _$$ErrorUserStateImplCopyWith<$Res> {
  __$$ErrorUserStateImplCopyWithImpl(
      _$ErrorUserStateImpl _value, $Res Function(_$ErrorUserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorUserStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorUserStateImpl extends _ErrorUserState {
  const _$ErrorUserStateImpl(
      {this.message = 'Произошла ошибка при получении пользователя'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'GetUserState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorUserStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorUserStateImplCopyWith<_$ErrorUserStateImpl> get copyWith =>
      __$$ErrorUserStateImplCopyWithImpl<_$ErrorUserStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UserEntity user) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(UserEntity user)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
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
    required TResult Function(_EmptyUserState value) empty,
    required TResult Function(_LoadingUserState value) loading,
    required TResult Function(_LoadedUserState value) loaded,
    required TResult Function(_ErrorUserState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyUserState value)? empty,
    TResult? Function(_LoadingUserState value)? loading,
    TResult? Function(_LoadedUserState value)? loaded,
    TResult? Function(_ErrorUserState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyUserState value)? empty,
    TResult Function(_LoadingUserState value)? loading,
    TResult Function(_LoadedUserState value)? loaded,
    TResult Function(_ErrorUserState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorUserState extends GetUserState {
  const factory _ErrorUserState({final String message}) = _$ErrorUserStateImpl;
  const _ErrorUserState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorUserStateImplCopyWith<_$ErrorUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
