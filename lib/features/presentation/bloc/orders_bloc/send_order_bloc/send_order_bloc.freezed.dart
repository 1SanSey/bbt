// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendOrderEvent {
  OrderEntity get order => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderEntity order) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderEntity order)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderEntity order)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendSingleOrderEvent value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendSingleOrderEvent value)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendSingleOrderEvent value)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendOrderEventCopyWith<SendOrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOrderEventCopyWith<$Res> {
  factory $SendOrderEventCopyWith(
          SendOrderEvent value, $Res Function(SendOrderEvent) then) =
      _$SendOrderEventCopyWithImpl<$Res, SendOrderEvent>;
  @useResult
  $Res call({OrderEntity order});
}

/// @nodoc
class _$SendOrderEventCopyWithImpl<$Res, $Val extends SendOrderEvent>
    implements $SendOrderEventCopyWith<$Res> {
  _$SendOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendSingleOrderEventImplCopyWith<$Res>
    implements $SendOrderEventCopyWith<$Res> {
  factory _$$SendSingleOrderEventImplCopyWith(_$SendSingleOrderEventImpl value,
          $Res Function(_$SendSingleOrderEventImpl) then) =
      __$$SendSingleOrderEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderEntity order});
}

/// @nodoc
class __$$SendSingleOrderEventImplCopyWithImpl<$Res>
    extends _$SendOrderEventCopyWithImpl<$Res, _$SendSingleOrderEventImpl>
    implements _$$SendSingleOrderEventImplCopyWith<$Res> {
  __$$SendSingleOrderEventImplCopyWithImpl(_$SendSingleOrderEventImpl _value,
      $Res Function(_$SendSingleOrderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$SendSingleOrderEventImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
    ));
  }
}

/// @nodoc

class _$SendSingleOrderEventImpl extends _SendSingleOrderEvent {
  const _$SendSingleOrderEventImpl({required this.order}) : super._();

  @override
  final OrderEntity order;

  @override
  String toString() {
    return 'SendOrderEvent.send(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendSingleOrderEventImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendSingleOrderEventImplCopyWith<_$SendSingleOrderEventImpl>
      get copyWith =>
          __$$SendSingleOrderEventImplCopyWithImpl<_$SendSingleOrderEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderEntity order) send,
  }) {
    return send(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderEntity order)? send,
  }) {
    return send?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderEntity order)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendSingleOrderEvent value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendSingleOrderEvent value)? send,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendSingleOrderEvent value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class _SendSingleOrderEvent extends SendOrderEvent {
  const factory _SendSingleOrderEvent({required final OrderEntity order}) =
      _$SendSingleOrderEventImpl;
  const _SendSingleOrderEvent._() : super._();

  @override
  OrderEntity get order;
  @override
  @JsonKey(ignore: true)
  _$$SendSingleOrderEventImplCopyWith<_$SendSingleOrderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() sending,
    required TResult Function(String order) sended,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? sending,
    TResult? Function(String order)? sended,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? sending,
    TResult Function(String order)? sended,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyOrderState value) empty,
    required TResult Function(_SendingOrderState value) sending,
    required TResult Function(_SendedOrderState value) sended,
    required TResult Function(_ErrorOrderState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrderState value)? empty,
    TResult? Function(_SendingOrderState value)? sending,
    TResult? Function(_SendedOrderState value)? sended,
    TResult? Function(_ErrorOrderState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrderState value)? empty,
    TResult Function(_SendingOrderState value)? sending,
    TResult Function(_SendedOrderState value)? sended,
    TResult Function(_ErrorOrderState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOrderStateCopyWith<$Res> {
  factory $SendOrderStateCopyWith(
          SendOrderState value, $Res Function(SendOrderState) then) =
      _$SendOrderStateCopyWithImpl<$Res, SendOrderState>;
}

/// @nodoc
class _$SendOrderStateCopyWithImpl<$Res, $Val extends SendOrderState>
    implements $SendOrderStateCopyWith<$Res> {
  _$SendOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyOrderStateImplCopyWith<$Res> {
  factory _$$EmptyOrderStateImplCopyWith(_$EmptyOrderStateImpl value,
          $Res Function(_$EmptyOrderStateImpl) then) =
      __$$EmptyOrderStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyOrderStateImplCopyWithImpl<$Res>
    extends _$SendOrderStateCopyWithImpl<$Res, _$EmptyOrderStateImpl>
    implements _$$EmptyOrderStateImplCopyWith<$Res> {
  __$$EmptyOrderStateImplCopyWithImpl(
      _$EmptyOrderStateImpl _value, $Res Function(_$EmptyOrderStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyOrderStateImpl extends _EmptyOrderState {
  const _$EmptyOrderStateImpl() : super._();

  @override
  String toString() {
    return 'SendOrderState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyOrderStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() sending,
    required TResult Function(String order) sended,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? sending,
    TResult? Function(String order)? sended,
    TResult? Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? sending,
    TResult Function(String order)? sended,
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
    required TResult Function(_EmptyOrderState value) empty,
    required TResult Function(_SendingOrderState value) sending,
    required TResult Function(_SendedOrderState value) sended,
    required TResult Function(_ErrorOrderState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrderState value)? empty,
    TResult? Function(_SendingOrderState value)? sending,
    TResult? Function(_SendedOrderState value)? sended,
    TResult? Function(_ErrorOrderState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrderState value)? empty,
    TResult Function(_SendingOrderState value)? sending,
    TResult Function(_SendedOrderState value)? sended,
    TResult Function(_ErrorOrderState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyOrderState extends SendOrderState {
  const factory _EmptyOrderState() = _$EmptyOrderStateImpl;
  const _EmptyOrderState._() : super._();
}

/// @nodoc
abstract class _$$SendingOrderStateImplCopyWith<$Res> {
  factory _$$SendingOrderStateImplCopyWith(_$SendingOrderStateImpl value,
          $Res Function(_$SendingOrderStateImpl) then) =
      __$$SendingOrderStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingOrderStateImplCopyWithImpl<$Res>
    extends _$SendOrderStateCopyWithImpl<$Res, _$SendingOrderStateImpl>
    implements _$$SendingOrderStateImplCopyWith<$Res> {
  __$$SendingOrderStateImplCopyWithImpl(_$SendingOrderStateImpl _value,
      $Res Function(_$SendingOrderStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendingOrderStateImpl extends _SendingOrderState {
  const _$SendingOrderStateImpl() : super._();

  @override
  String toString() {
    return 'SendOrderState.sending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendingOrderStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() sending,
    required TResult Function(String order) sended,
    required TResult Function(String message) error,
  }) {
    return sending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? sending,
    TResult? Function(String order)? sended,
    TResult? Function(String message)? error,
  }) {
    return sending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? sending,
    TResult Function(String order)? sended,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyOrderState value) empty,
    required TResult Function(_SendingOrderState value) sending,
    required TResult Function(_SendedOrderState value) sended,
    required TResult Function(_ErrorOrderState value) error,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrderState value)? empty,
    TResult? Function(_SendingOrderState value)? sending,
    TResult? Function(_SendedOrderState value)? sended,
    TResult? Function(_ErrorOrderState value)? error,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrderState value)? empty,
    TResult Function(_SendingOrderState value)? sending,
    TResult Function(_SendedOrderState value)? sended,
    TResult Function(_ErrorOrderState value)? error,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class _SendingOrderState extends SendOrderState {
  const factory _SendingOrderState() = _$SendingOrderStateImpl;
  const _SendingOrderState._() : super._();
}

/// @nodoc
abstract class _$$SendedOrderStateImplCopyWith<$Res> {
  factory _$$SendedOrderStateImplCopyWith(_$SendedOrderStateImpl value,
          $Res Function(_$SendedOrderStateImpl) then) =
      __$$SendedOrderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String order});
}

/// @nodoc
class __$$SendedOrderStateImplCopyWithImpl<$Res>
    extends _$SendOrderStateCopyWithImpl<$Res, _$SendedOrderStateImpl>
    implements _$$SendedOrderStateImplCopyWith<$Res> {
  __$$SendedOrderStateImplCopyWithImpl(_$SendedOrderStateImpl _value,
      $Res Function(_$SendedOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$SendedOrderStateImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendedOrderStateImpl extends _SendedOrderState {
  const _$SendedOrderStateImpl({required this.order}) : super._();

  @override
  final String order;

  @override
  String toString() {
    return 'SendOrderState.sended(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendedOrderStateImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendedOrderStateImplCopyWith<_$SendedOrderStateImpl> get copyWith =>
      __$$SendedOrderStateImplCopyWithImpl<_$SendedOrderStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() sending,
    required TResult Function(String order) sended,
    required TResult Function(String message) error,
  }) {
    return sended(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? sending,
    TResult? Function(String order)? sended,
    TResult? Function(String message)? error,
  }) {
    return sended?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? sending,
    TResult Function(String order)? sended,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (sended != null) {
      return sended(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyOrderState value) empty,
    required TResult Function(_SendingOrderState value) sending,
    required TResult Function(_SendedOrderState value) sended,
    required TResult Function(_ErrorOrderState value) error,
  }) {
    return sended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrderState value)? empty,
    TResult? Function(_SendingOrderState value)? sending,
    TResult? Function(_SendedOrderState value)? sended,
    TResult? Function(_ErrorOrderState value)? error,
  }) {
    return sended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrderState value)? empty,
    TResult Function(_SendingOrderState value)? sending,
    TResult Function(_SendedOrderState value)? sended,
    TResult Function(_ErrorOrderState value)? error,
    required TResult orElse(),
  }) {
    if (sended != null) {
      return sended(this);
    }
    return orElse();
  }
}

abstract class _SendedOrderState extends SendOrderState {
  const factory _SendedOrderState({required final String order}) =
      _$SendedOrderStateImpl;
  const _SendedOrderState._() : super._();

  String get order;
  @JsonKey(ignore: true)
  _$$SendedOrderStateImplCopyWith<_$SendedOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorOrderStateImplCopyWith<$Res> {
  factory _$$ErrorOrderStateImplCopyWith(_$ErrorOrderStateImpl value,
          $Res Function(_$ErrorOrderStateImpl) then) =
      __$$ErrorOrderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorOrderStateImplCopyWithImpl<$Res>
    extends _$SendOrderStateCopyWithImpl<$Res, _$ErrorOrderStateImpl>
    implements _$$ErrorOrderStateImplCopyWith<$Res> {
  __$$ErrorOrderStateImplCopyWithImpl(
      _$ErrorOrderStateImpl _value, $Res Function(_$ErrorOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorOrderStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorOrderStateImpl extends _ErrorOrderState {
  const _$ErrorOrderStateImpl(
      {this.message = 'Произошла ошибка отправки заказа'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SendOrderState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorOrderStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorOrderStateImplCopyWith<_$ErrorOrderStateImpl> get copyWith =>
      __$$ErrorOrderStateImplCopyWithImpl<_$ErrorOrderStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() sending,
    required TResult Function(String order) sended,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? sending,
    TResult? Function(String order)? sended,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? sending,
    TResult Function(String order)? sended,
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
    required TResult Function(_EmptyOrderState value) empty,
    required TResult Function(_SendingOrderState value) sending,
    required TResult Function(_SendedOrderState value) sended,
    required TResult Function(_ErrorOrderState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrderState value)? empty,
    TResult? Function(_SendingOrderState value)? sending,
    TResult? Function(_SendedOrderState value)? sended,
    TResult? Function(_ErrorOrderState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrderState value)? empty,
    TResult Function(_SendingOrderState value)? sending,
    TResult Function(_SendedOrderState value)? sended,
    TResult Function(_ErrorOrderState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorOrderState extends SendOrderState {
  const factory _ErrorOrderState({final String message}) =
      _$ErrorOrderStateImpl;
  const _ErrorOrderState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorOrderStateImplCopyWith<_$ErrorOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
