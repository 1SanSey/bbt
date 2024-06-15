import 'package:bbt/core/error/failure.dart';
import 'package:bbt/features/domain/entities/order_entity.dart';
import 'package:dartz/dartz.dart';

abstract class IOrdersRepository {
  Future<Either<Failure, String>> sendOrder(OrderEntity order);
  Future<Either<Failure, List<OrderEntity>>> fetchOrders(String userId);
  Future<Either<Failure, List<OrderEntity>>> fetchAllOrders();
}
