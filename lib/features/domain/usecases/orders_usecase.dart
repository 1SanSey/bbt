import 'package:bbt/core/error/failure.dart';
import 'package:bbt/features/domain/entities/order_entity.dart';
import 'package:bbt/features/domain/repositories/i_orders_repository.dart';
import 'package:bbt/features/domain/usecases/usecases.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class OrdersUsecase extends UseCaseByParams<List<OrderEntity>, OrdersParams> {
  final IOrdersRepository ordersRepository;

  OrdersUsecase(this.ordersRepository);

  @override
  Future<Either<Failure, List<OrderEntity>>> call(OrdersParams params) async {
    return ordersRepository.fetchOrders(params.userId);
  }
}

class SendOrderUsecase extends UseCaseByParams<String, OrderParams> {
  final IOrdersRepository ordersRepository;

  SendOrderUsecase(this.ordersRepository);

  @override
  Future<Either<Failure, String>> call(OrderParams params) async {
    return ordersRepository.sendOrder(params.order);
  }
}

class OrdersParams extends Equatable {
  final String userId;

  const OrdersParams({required this.userId});

  @override
  List<Object?> get props => [userId];
}

class OrderParams extends Equatable {
  final OrderEntity order;

  const OrderParams({required this.order});

  @override
  List<Object?> get props => [order];
}
