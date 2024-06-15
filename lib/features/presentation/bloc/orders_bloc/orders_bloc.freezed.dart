// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String userId) fetch,
    required TResult Function() fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String userId)? fetch,
    TResult? Function()? fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String userId)? fetch,
    TResult Function()? fetchAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyOrdersEvent value) empty,
    required TResult Function(_FetchOrdersEvent value) fetch,
    required TResult Function(_FetchAllOrdersEvent value) fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrdersEvent value)? empty,
    TResult? Function(_FetchOrdersEvent value)? fetch,
    TResult? Function(_FetchAllOrdersEvent value)? fetchAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrdersEvent value)? empty,
    TResult Function(_FetchOrdersEvent value)? fetch,
    TResult Function(_FetchAllOrdersEvent value)? fetchAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyOrdersEventImplCopyWith<$Res> {
  factory _$$EmptyOrdersEventImplCopyWith(_$EmptyOrdersEventImpl value,
          $Res Function(_$EmptyOrdersEventImpl) then) =
      __$$EmptyOrdersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$EmptyOrdersEventImpl>
    implements _$$EmptyOrdersEventImplCopyWith<$Res> {
  __$$EmptyOrdersEventImplCopyWithImpl(_$EmptyOrdersEventImpl _value,
      $Res Function(_$EmptyOrdersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyOrdersEventImpl extends _EmptyOrdersEvent {
  const _$EmptyOrdersEventImpl() : super._();

  @override
  String toString() {
    return 'OrdersEvent.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyOrdersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String userId) fetch,
    required TResult Function() fetchAll,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String userId)? fetch,
    TResult? Function()? fetchAll,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String userId)? fetch,
    TResult Function()? fetchAll,
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
    required TResult Function(_EmptyOrdersEvent value) empty,
    required TResult Function(_FetchOrdersEvent value) fetch,
    required TResult Function(_FetchAllOrdersEvent value) fetchAll,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrdersEvent value)? empty,
    TResult? Function(_FetchOrdersEvent value)? fetch,
    TResult? Function(_FetchAllOrdersEvent value)? fetchAll,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrdersEvent value)? empty,
    TResult Function(_FetchOrdersEvent value)? fetch,
    TResult Function(_FetchAllOrdersEvent value)? fetchAll,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyOrdersEvent extends OrdersEvent {
  const factory _EmptyOrdersEvent() = _$EmptyOrdersEventImpl;
  const _EmptyOrdersEvent._() : super._();
}

/// @nodoc
abstract class _$$FetchOrdersEventImplCopyWith<$Res> {
  factory _$$FetchOrdersEventImplCopyWith(_$FetchOrdersEventImpl value,
          $Res Function(_$FetchOrdersEventImpl) then) =
      __$$FetchOrdersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$FetchOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$FetchOrdersEventImpl>
    implements _$$FetchOrdersEventImplCopyWith<$Res> {
  __$$FetchOrdersEventImplCopyWithImpl(_$FetchOrdersEventImpl _value,
      $Res Function(_$FetchOrdersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$FetchOrdersEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchOrdersEventImpl extends _FetchOrdersEvent {
  const _$FetchOrdersEventImpl({required this.userId}) : super._();

  @override
  final String userId;

  @override
  String toString() {
    return 'OrdersEvent.fetch(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOrdersEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchOrdersEventImplCopyWith<_$FetchOrdersEventImpl> get copyWith =>
      __$$FetchOrdersEventImplCopyWithImpl<_$FetchOrdersEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String userId) fetch,
    required TResult Function() fetchAll,
  }) {
    return fetch(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String userId)? fetch,
    TResult? Function()? fetchAll,
  }) {
    return fetch?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String userId)? fetch,
    TResult Function()? fetchAll,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyOrdersEvent value) empty,
    required TResult Function(_FetchOrdersEvent value) fetch,
    required TResult Function(_FetchAllOrdersEvent value) fetchAll,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrdersEvent value)? empty,
    TResult? Function(_FetchOrdersEvent value)? fetch,
    TResult? Function(_FetchAllOrdersEvent value)? fetchAll,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrdersEvent value)? empty,
    TResult Function(_FetchOrdersEvent value)? fetch,
    TResult Function(_FetchAllOrdersEvent value)? fetchAll,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchOrdersEvent extends OrdersEvent {
  const factory _FetchOrdersEvent({required final String userId}) =
      _$FetchOrdersEventImpl;
  const _FetchOrdersEvent._() : super._();

  String get userId;
  @JsonKey(ignore: true)
  _$$FetchOrdersEventImplCopyWith<_$FetchOrdersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllOrdersEventImplCopyWith<$Res> {
  factory _$$FetchAllOrdersEventImplCopyWith(_$FetchAllOrdersEventImpl value,
          $Res Function(_$FetchAllOrdersEventImpl) then) =
      __$$FetchAllOrdersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$FetchAllOrdersEventImpl>
    implements _$$FetchAllOrdersEventImplCopyWith<$Res> {
  __$$FetchAllOrdersEventImplCopyWithImpl(_$FetchAllOrdersEventImpl _value,
      $Res Function(_$FetchAllOrdersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllOrdersEventImpl extends _FetchAllOrdersEvent {
  const _$FetchAllOrdersEventImpl() : super._();

  @override
  String toString() {
    return 'OrdersEvent.fetchAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllOrdersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String userId) fetch,
    required TResult Function() fetchAll,
  }) {
    return fetchAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String userId)? fetch,
    TResult? Function()? fetchAll,
  }) {
    return fetchAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String userId)? fetch,
    TResult Function()? fetchAll,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyOrdersEvent value) empty,
    required TResult Function(_FetchOrdersEvent value) fetch,
    required TResult Function(_FetchAllOrdersEvent value) fetchAll,
  }) {
    return fetchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrdersEvent value)? empty,
    TResult? Function(_FetchOrdersEvent value)? fetch,
    TResult? Function(_FetchAllOrdersEvent value)? fetchAll,
  }) {
    return fetchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrdersEvent value)? empty,
    TResult Function(_FetchOrdersEvent value)? fetch,
    TResult Function(_FetchAllOrdersEvent value)? fetchAll,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll(this);
    }
    return orElse();
  }
}

abstract class _FetchAllOrdersEvent extends OrdersEvent {
  const factory _FetchAllOrdersEvent() = _$FetchAllOrdersEventImpl;
  const _FetchAllOrdersEvent._() : super._();
}

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> orders) loaded,
    required TResult Function(List<OrderEntity> orders) loadedAll,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<OrderEntity> orders)? loaded,
    TResult? Function(List<OrderEntity> orders)? loadedAll,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> orders)? loaded,
    TResult Function(List<OrderEntity> orders)? loadedAll,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyOrdersState value) empty,
    required TResult Function(_LoadingOrdersState value) loading,
    required TResult Function(_LoadedOrdersState value) loaded,
    required TResult Function(_LoadedAllOrdersState value) loadedAll,
    required TResult Function(_ErrorOrdersState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrdersState value)? empty,
    TResult? Function(_LoadingOrdersState value)? loading,
    TResult? Function(_LoadedOrdersState value)? loaded,
    TResult? Function(_LoadedAllOrdersState value)? loadedAll,
    TResult? Function(_ErrorOrdersState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_LoadingOrdersState value)? loading,
    TResult Function(_LoadedOrdersState value)? loaded,
    TResult Function(_LoadedAllOrdersState value)? loadedAll,
    TResult Function(_ErrorOrdersState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyOrdersStateImplCopyWith<$Res> {
  factory _$$EmptyOrdersStateImplCopyWith(_$EmptyOrdersStateImpl value,
          $Res Function(_$EmptyOrdersStateImpl) then) =
      __$$EmptyOrdersStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyOrdersStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$EmptyOrdersStateImpl>
    implements _$$EmptyOrdersStateImplCopyWith<$Res> {
  __$$EmptyOrdersStateImplCopyWithImpl(_$EmptyOrdersStateImpl _value,
      $Res Function(_$EmptyOrdersStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyOrdersStateImpl extends _EmptyOrdersState {
  const _$EmptyOrdersStateImpl() : super._();

  @override
  String toString() {
    return 'OrdersState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyOrdersStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> orders) loaded,
    required TResult Function(List<OrderEntity> orders) loadedAll,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<OrderEntity> orders)? loaded,
    TResult? Function(List<OrderEntity> orders)? loadedAll,
    TResult? Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> orders)? loaded,
    TResult Function(List<OrderEntity> orders)? loadedAll,
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
    required TResult Function(_EmptyOrdersState value) empty,
    required TResult Function(_LoadingOrdersState value) loading,
    required TResult Function(_LoadedOrdersState value) loaded,
    required TResult Function(_LoadedAllOrdersState value) loadedAll,
    required TResult Function(_ErrorOrdersState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrdersState value)? empty,
    TResult? Function(_LoadingOrdersState value)? loading,
    TResult? Function(_LoadedOrdersState value)? loaded,
    TResult? Function(_LoadedAllOrdersState value)? loadedAll,
    TResult? Function(_ErrorOrdersState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_LoadingOrdersState value)? loading,
    TResult Function(_LoadedOrdersState value)? loaded,
    TResult Function(_LoadedAllOrdersState value)? loadedAll,
    TResult Function(_ErrorOrdersState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyOrdersState extends OrdersState {
  const factory _EmptyOrdersState() = _$EmptyOrdersStateImpl;
  const _EmptyOrdersState._() : super._();
}

/// @nodoc
abstract class _$$LoadingOrdersStateImplCopyWith<$Res> {
  factory _$$LoadingOrdersStateImplCopyWith(_$LoadingOrdersStateImpl value,
          $Res Function(_$LoadingOrdersStateImpl) then) =
      __$$LoadingOrdersStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingOrdersStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadingOrdersStateImpl>
    implements _$$LoadingOrdersStateImplCopyWith<$Res> {
  __$$LoadingOrdersStateImplCopyWithImpl(_$LoadingOrdersStateImpl _value,
      $Res Function(_$LoadingOrdersStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingOrdersStateImpl extends _LoadingOrdersState {
  const _$LoadingOrdersStateImpl() : super._();

  @override
  String toString() {
    return 'OrdersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingOrdersStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> orders) loaded,
    required TResult Function(List<OrderEntity> orders) loadedAll,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<OrderEntity> orders)? loaded,
    TResult? Function(List<OrderEntity> orders)? loadedAll,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> orders)? loaded,
    TResult Function(List<OrderEntity> orders)? loadedAll,
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
    required TResult Function(_EmptyOrdersState value) empty,
    required TResult Function(_LoadingOrdersState value) loading,
    required TResult Function(_LoadedOrdersState value) loaded,
    required TResult Function(_LoadedAllOrdersState value) loadedAll,
    required TResult Function(_ErrorOrdersState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrdersState value)? empty,
    TResult? Function(_LoadingOrdersState value)? loading,
    TResult? Function(_LoadedOrdersState value)? loaded,
    TResult? Function(_LoadedAllOrdersState value)? loadedAll,
    TResult? Function(_ErrorOrdersState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_LoadingOrdersState value)? loading,
    TResult Function(_LoadedOrdersState value)? loaded,
    TResult Function(_LoadedAllOrdersState value)? loadedAll,
    TResult Function(_ErrorOrdersState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingOrdersState extends OrdersState {
  const factory _LoadingOrdersState() = _$LoadingOrdersStateImpl;
  const _LoadingOrdersState._() : super._();
}

/// @nodoc
abstract class _$$LoadedOrdersStateImplCopyWith<$Res> {
  factory _$$LoadedOrdersStateImplCopyWith(_$LoadedOrdersStateImpl value,
          $Res Function(_$LoadedOrdersStateImpl) then) =
      __$$LoadedOrdersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderEntity> orders});
}

/// @nodoc
class __$$LoadedOrdersStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadedOrdersStateImpl>
    implements _$$LoadedOrdersStateImplCopyWith<$Res> {
  __$$LoadedOrdersStateImplCopyWithImpl(_$LoadedOrdersStateImpl _value,
      $Res Function(_$LoadedOrdersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$LoadedOrdersStateImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedOrdersStateImpl extends _LoadedOrdersState {
  const _$LoadedOrdersStateImpl({required final List<OrderEntity> orders})
      : _orders = orders,
        super._();

  final List<OrderEntity> _orders;
  @override
  List<OrderEntity> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrdersState.loaded(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedOrdersStateImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedOrdersStateImplCopyWith<_$LoadedOrdersStateImpl> get copyWith =>
      __$$LoadedOrdersStateImplCopyWithImpl<_$LoadedOrdersStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> orders) loaded,
    required TResult Function(List<OrderEntity> orders) loadedAll,
    required TResult Function(String message) error,
  }) {
    return loaded(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<OrderEntity> orders)? loaded,
    TResult? Function(List<OrderEntity> orders)? loadedAll,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> orders)? loaded,
    TResult Function(List<OrderEntity> orders)? loadedAll,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyOrdersState value) empty,
    required TResult Function(_LoadingOrdersState value) loading,
    required TResult Function(_LoadedOrdersState value) loaded,
    required TResult Function(_LoadedAllOrdersState value) loadedAll,
    required TResult Function(_ErrorOrdersState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrdersState value)? empty,
    TResult? Function(_LoadingOrdersState value)? loading,
    TResult? Function(_LoadedOrdersState value)? loaded,
    TResult? Function(_LoadedAllOrdersState value)? loadedAll,
    TResult? Function(_ErrorOrdersState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_LoadingOrdersState value)? loading,
    TResult Function(_LoadedOrdersState value)? loaded,
    TResult Function(_LoadedAllOrdersState value)? loadedAll,
    TResult Function(_ErrorOrdersState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedOrdersState extends OrdersState {
  const factory _LoadedOrdersState({required final List<OrderEntity> orders}) =
      _$LoadedOrdersStateImpl;
  const _LoadedOrdersState._() : super._();

  List<OrderEntity> get orders;
  @JsonKey(ignore: true)
  _$$LoadedOrdersStateImplCopyWith<_$LoadedOrdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedAllOrdersStateImplCopyWith<$Res> {
  factory _$$LoadedAllOrdersStateImplCopyWith(_$LoadedAllOrdersStateImpl value,
          $Res Function(_$LoadedAllOrdersStateImpl) then) =
      __$$LoadedAllOrdersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderEntity> orders});
}

/// @nodoc
class __$$LoadedAllOrdersStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadedAllOrdersStateImpl>
    implements _$$LoadedAllOrdersStateImplCopyWith<$Res> {
  __$$LoadedAllOrdersStateImplCopyWithImpl(_$LoadedAllOrdersStateImpl _value,
      $Res Function(_$LoadedAllOrdersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$LoadedAllOrdersStateImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedAllOrdersStateImpl extends _LoadedAllOrdersState {
  const _$LoadedAllOrdersStateImpl({required final List<OrderEntity> orders})
      : _orders = orders,
        super._();

  final List<OrderEntity> _orders;
  @override
  List<OrderEntity> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrdersState.loadedAll(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedAllOrdersStateImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedAllOrdersStateImplCopyWith<_$LoadedAllOrdersStateImpl>
      get copyWith =>
          __$$LoadedAllOrdersStateImplCopyWithImpl<_$LoadedAllOrdersStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> orders) loaded,
    required TResult Function(List<OrderEntity> orders) loadedAll,
    required TResult Function(String message) error,
  }) {
    return loadedAll(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<OrderEntity> orders)? loaded,
    TResult? Function(List<OrderEntity> orders)? loadedAll,
    TResult? Function(String message)? error,
  }) {
    return loadedAll?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> orders)? loaded,
    TResult Function(List<OrderEntity> orders)? loadedAll,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedAll != null) {
      return loadedAll(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyOrdersState value) empty,
    required TResult Function(_LoadingOrdersState value) loading,
    required TResult Function(_LoadedOrdersState value) loaded,
    required TResult Function(_LoadedAllOrdersState value) loadedAll,
    required TResult Function(_ErrorOrdersState value) error,
  }) {
    return loadedAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrdersState value)? empty,
    TResult? Function(_LoadingOrdersState value)? loading,
    TResult? Function(_LoadedOrdersState value)? loaded,
    TResult? Function(_LoadedAllOrdersState value)? loadedAll,
    TResult? Function(_ErrorOrdersState value)? error,
  }) {
    return loadedAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_LoadingOrdersState value)? loading,
    TResult Function(_LoadedOrdersState value)? loaded,
    TResult Function(_LoadedAllOrdersState value)? loadedAll,
    TResult Function(_ErrorOrdersState value)? error,
    required TResult orElse(),
  }) {
    if (loadedAll != null) {
      return loadedAll(this);
    }
    return orElse();
  }
}

abstract class _LoadedAllOrdersState extends OrdersState {
  const factory _LoadedAllOrdersState(
      {required final List<OrderEntity> orders}) = _$LoadedAllOrdersStateImpl;
  const _LoadedAllOrdersState._() : super._();

  List<OrderEntity> get orders;
  @JsonKey(ignore: true)
  _$$LoadedAllOrdersStateImplCopyWith<_$LoadedAllOrdersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorOrdersStateImplCopyWith<$Res> {
  factory _$$ErrorOrdersStateImplCopyWith(_$ErrorOrdersStateImpl value,
          $Res Function(_$ErrorOrdersStateImpl) then) =
      __$$ErrorOrdersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorOrdersStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$ErrorOrdersStateImpl>
    implements _$$ErrorOrdersStateImplCopyWith<$Res> {
  __$$ErrorOrdersStateImplCopyWithImpl(_$ErrorOrdersStateImpl _value,
      $Res Function(_$ErrorOrdersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorOrdersStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorOrdersStateImpl extends _ErrorOrdersState {
  const _$ErrorOrdersStateImpl(
      {this.message = 'Произошла ошибка загрузки заказов'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'OrdersState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorOrdersStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorOrdersStateImplCopyWith<_$ErrorOrdersStateImpl> get copyWith =>
      __$$ErrorOrdersStateImplCopyWithImpl<_$ErrorOrdersStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> orders) loaded,
    required TResult Function(List<OrderEntity> orders) loadedAll,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<OrderEntity> orders)? loaded,
    TResult? Function(List<OrderEntity> orders)? loadedAll,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> orders)? loaded,
    TResult Function(List<OrderEntity> orders)? loadedAll,
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
    required TResult Function(_EmptyOrdersState value) empty,
    required TResult Function(_LoadingOrdersState value) loading,
    required TResult Function(_LoadedOrdersState value) loaded,
    required TResult Function(_LoadedAllOrdersState value) loadedAll,
    required TResult Function(_ErrorOrdersState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyOrdersState value)? empty,
    TResult? Function(_LoadingOrdersState value)? loading,
    TResult? Function(_LoadedOrdersState value)? loaded,
    TResult? Function(_LoadedAllOrdersState value)? loadedAll,
    TResult? Function(_ErrorOrdersState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyOrdersState value)? empty,
    TResult Function(_LoadingOrdersState value)? loading,
    TResult Function(_LoadedOrdersState value)? loaded,
    TResult Function(_LoadedAllOrdersState value)? loadedAll,
    TResult Function(_ErrorOrdersState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorOrdersState extends OrdersState {
  const factory _ErrorOrdersState({final String message}) =
      _$ErrorOrdersStateImpl;
  const _ErrorOrdersState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorOrdersStateImplCopyWith<_$ErrorOrdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
