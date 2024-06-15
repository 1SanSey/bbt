import 'package:bbt/features/data/models/order_model.dart';
import 'package:bbt/features/domain/entities/order_entity.dart';

abstract class IOrdersRemoteDatasource {
  Future<String> sendOrder(OrderEntity order);
  Future<List<OrderModel>> fetchOrders(String userId);
  Future<List<OrderModel>> fetchAllOrders();
  Future<void> sendTelegramMessage(OrderEntity order);
}
