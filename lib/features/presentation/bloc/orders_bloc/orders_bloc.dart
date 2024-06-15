import 'package:bbt/common/failure_to_message.dart';
import 'package:bbt/features/domain/entities/order_entity.dart';
import 'package:bbt/features/domain/repositories/i_orders_repository.dart';
import 'package:bbt/features/domain/usecases/orders_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'orders_bloc.freezed.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const OrdersEvent._();
  const factory OrdersEvent.empty() = _EmptyOrdersEvent;
  const factory OrdersEvent.fetch({required String userId}) = _FetchOrdersEvent;
  const factory OrdersEvent.fetchAll() = _FetchAllOrdersEvent;
}

@freezed
class OrdersState with _$OrdersState {
  const OrdersState._();
  const factory OrdersState.empty() = _EmptyOrdersState;
  const factory OrdersState.loading() = _LoadingOrdersState;
  const factory OrdersState.loaded({required List<OrderEntity> orders}) = _LoadedOrdersState;
  const factory OrdersState.loadedAll({required List<OrderEntity> orders}) = _LoadedAllOrdersState;
  const factory OrdersState.error({
    @Default('Произошла ошибка загрузки заказов') String message,
  }) = _ErrorOrdersState;
}

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrdersUsecase ordersUseCase;
  final IOrdersRepository ordersRepository;


  OrdersBloc(this.ordersRepository, this.ordersUseCase) : super(const OrdersState.empty()) {
    on<OrdersEvent>(
      (event, emitter) => event.map<Future<void>>(
        empty: (event) => _emptyEvent(event, emitter),
        fetch: (event) => _fetchEvent(event, emitter),
        fetchAll: (event) => _fetchAllEvent(event, emitter),
      ),
      transformer: bloc_concurrency.droppable(),
    );
  }

  Future<void> _fetchEvent(_FetchOrdersEvent event, Emitter<OrdersState> emitter) async {
    emitter(const OrdersState.loading());
    final failureOrOrders = await ordersUseCase(OrdersParams(userId: event.userId));

    failureOrOrders.fold(
      (failure) => emitter(OrdersState.error(message: mapFailureToMessage(failure))),
      (orders) {
        emitter(OrdersState.loaded(orders: orders));
      },
    );
  }

  Future<void> _fetchAllEvent(_FetchAllOrdersEvent _, Emitter<OrdersState> emitter) async {
    emitter(const OrdersState.loading());
    final failureOrOrders = await ordersRepository.fetchAllOrders();

    failureOrOrders.fold(
      (failure) => emitter(OrdersState.error(message: mapFailureToMessage(failure))),
      (orders) {
        emitter(OrdersState.loadedAll(orders: orders));
      },
    );
  }

  Future<void> _emptyEvent(_EmptyOrdersEvent _, Emitter<OrdersState> __) async {}
}
