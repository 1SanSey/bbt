// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_display_name_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateDisplayNameEvent {
  String get id => throw _privateConstructorUsedError;
  String get newName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String newName) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String newName)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String newName)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateDisplayNameEventCopyWith<UpdateDisplayNameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDisplayNameEventCopyWith<$Res> {
  factory $UpdateDisplayNameEventCopyWith(UpdateDisplayNameEvent value,
          $Res Function(UpdateDisplayNameEvent) then) =
      _$UpdateDisplayNameEventCopyWithImpl<$Res, UpdateDisplayNameEvent>;
  @useResult
  $Res call({String id, String newName});
}

/// @nodoc
class _$UpdateDisplayNameEventCopyWithImpl<$Res,
        $Val extends UpdateDisplayNameEvent>
    implements $UpdateDisplayNameEventCopyWith<$Res> {
  _$UpdateDisplayNameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? newName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      newName: null == newName
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateEventImplCopyWith<$Res>
    implements $UpdateDisplayNameEventCopyWith<$Res> {
  factory _$$UpdateEventImplCopyWith(
          _$UpdateEventImpl value, $Res Function(_$UpdateEventImpl) then) =
      __$$UpdateEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String newName});
}

/// @nodoc
class __$$UpdateEventImplCopyWithImpl<$Res>
    extends _$UpdateDisplayNameEventCopyWithImpl<$Res, _$UpdateEventImpl>
    implements _$$UpdateEventImplCopyWith<$Res> {
  __$$UpdateEventImplCopyWithImpl(
      _$UpdateEventImpl _value, $Res Function(_$UpdateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? newName = null,
  }) {
    return _then(_$UpdateEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      newName: null == newName
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateEventImpl extends _UpdateEvent {
  const _$UpdateEventImpl({required this.id, required this.newName})
      : super._();

  @override
  final String id;
  @override
  final String newName;

  @override
  String toString() {
    return 'UpdateDisplayNameEvent.update(id: $id, newName: $newName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.newName, newName) || other.newName == newName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, newName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      __$$UpdateEventImplCopyWithImpl<_$UpdateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String newName) update,
  }) {
    return update(id, newName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String newName)? update,
  }) {
    return update?.call(id, newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String newName)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(id, newName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent extends UpdateDisplayNameEvent {
  const factory _UpdateEvent(
      {required final String id,
      required final String newName}) = _$UpdateEventImpl;
  const _UpdateEvent._() : super._();

  @override
  String get id;
  @override
  String get newName;
  @override
  @JsonKey(ignore: true)
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateDisplayNameState {
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
    required TResult Function(_EmptyState value) empty,
    required TResult Function(_UpdatingState value) updating,
    required TResult Function(_UpdatedState value) updated,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? empty,
    TResult? Function(_UpdatingState value)? updating,
    TResult? Function(_UpdatedState value)? updated,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? empty,
    TResult Function(_UpdatingState value)? updating,
    TResult Function(_UpdatedState value)? updated,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDisplayNameStateCopyWith<$Res> {
  factory $UpdateDisplayNameStateCopyWith(UpdateDisplayNameState value,
          $Res Function(UpdateDisplayNameState) then) =
      _$UpdateDisplayNameStateCopyWithImpl<$Res, UpdateDisplayNameState>;
}

/// @nodoc
class _$UpdateDisplayNameStateCopyWithImpl<$Res,
        $Val extends UpdateDisplayNameState>
    implements $UpdateDisplayNameStateCopyWith<$Res> {
  _$UpdateDisplayNameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyStateImplCopyWith<$Res> {
  factory _$$EmptyStateImplCopyWith(
          _$EmptyStateImpl value, $Res Function(_$EmptyStateImpl) then) =
      __$$EmptyStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyStateImplCopyWithImpl<$Res>
    extends _$UpdateDisplayNameStateCopyWithImpl<$Res, _$EmptyStateImpl>
    implements _$$EmptyStateImplCopyWith<$Res> {
  __$$EmptyStateImplCopyWithImpl(
      _$EmptyStateImpl _value, $Res Function(_$EmptyStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyStateImpl extends _EmptyState {
  const _$EmptyStateImpl() : super._();

  @override
  String toString() {
    return 'UpdateDisplayNameState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyStateImpl);
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
    required TResult Function(_EmptyState value) empty,
    required TResult Function(_UpdatingState value) updating,
    required TResult Function(_UpdatedState value) updated,
    required TResult Function(_ErrorState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? empty,
    TResult? Function(_UpdatingState value)? updating,
    TResult? Function(_UpdatedState value)? updated,
    TResult? Function(_ErrorState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? empty,
    TResult Function(_UpdatingState value)? updating,
    TResult Function(_UpdatedState value)? updated,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyState extends UpdateDisplayNameState {
  const factory _EmptyState() = _$EmptyStateImpl;
  const _EmptyState._() : super._();
}

/// @nodoc
abstract class _$$UpdatingStateImplCopyWith<$Res> {
  factory _$$UpdatingStateImplCopyWith(
          _$UpdatingStateImpl value, $Res Function(_$UpdatingStateImpl) then) =
      __$$UpdatingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatingStateImplCopyWithImpl<$Res>
    extends _$UpdateDisplayNameStateCopyWithImpl<$Res, _$UpdatingStateImpl>
    implements _$$UpdatingStateImplCopyWith<$Res> {
  __$$UpdatingStateImplCopyWithImpl(
      _$UpdatingStateImpl _value, $Res Function(_$UpdatingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatingStateImpl extends _UpdatingState {
  const _$UpdatingStateImpl() : super._();

  @override
  String toString() {
    return 'UpdateDisplayNameState.updating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatingStateImpl);
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
    required TResult Function(_EmptyState value) empty,
    required TResult Function(_UpdatingState value) updating,
    required TResult Function(_UpdatedState value) updated,
    required TResult Function(_ErrorState value) error,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? empty,
    TResult? Function(_UpdatingState value)? updating,
    TResult? Function(_UpdatedState value)? updated,
    TResult? Function(_ErrorState value)? error,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? empty,
    TResult Function(_UpdatingState value)? updating,
    TResult Function(_UpdatedState value)? updated,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class _UpdatingState extends UpdateDisplayNameState {
  const factory _UpdatingState() = _$UpdatingStateImpl;
  const _UpdatingState._() : super._();
}

/// @nodoc
abstract class _$$UpdatedStateImplCopyWith<$Res> {
  factory _$$UpdatedStateImplCopyWith(
          _$UpdatedStateImpl value, $Res Function(_$UpdatedStateImpl) then) =
      __$$UpdatedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatedStateImplCopyWithImpl<$Res>
    extends _$UpdateDisplayNameStateCopyWithImpl<$Res, _$UpdatedStateImpl>
    implements _$$UpdatedStateImplCopyWith<$Res> {
  __$$UpdatedStateImplCopyWithImpl(
      _$UpdatedStateImpl _value, $Res Function(_$UpdatedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatedStateImpl extends _UpdatedState {
  const _$UpdatedStateImpl() : super._();

  @override
  String toString() {
    return 'UpdateDisplayNameState.updated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatedStateImpl);
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
    required TResult Function(_EmptyState value) empty,
    required TResult Function(_UpdatingState value) updating,
    required TResult Function(_UpdatedState value) updated,
    required TResult Function(_ErrorState value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? empty,
    TResult? Function(_UpdatingState value)? updating,
    TResult? Function(_UpdatedState value)? updated,
    TResult? Function(_ErrorState value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? empty,
    TResult Function(_UpdatingState value)? updating,
    TResult Function(_UpdatedState value)? updated,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _UpdatedState extends UpdateDisplayNameState {
  const factory _UpdatedState() = _$UpdatedStateImpl;
  const _UpdatedState._() : super._();
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$UpdateDisplayNameStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl extends _ErrorState {
  const _$ErrorStateImpl(
      {this.message = 'Произошла ошибка при обновлении имени пользователя'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'UpdateDisplayNameState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

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
    required TResult Function(_EmptyState value) empty,
    required TResult Function(_UpdatingState value) updating,
    required TResult Function(_UpdatedState value) updated,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? empty,
    TResult? Function(_UpdatingState value)? updating,
    TResult? Function(_UpdatedState value)? updated,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? empty,
    TResult Function(_UpdatingState value)? updating,
    TResult Function(_UpdatedState value)? updated,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends UpdateDisplayNameState {
  const factory _ErrorState({final String message}) = _$ErrorStateImpl;
  const _ErrorState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
