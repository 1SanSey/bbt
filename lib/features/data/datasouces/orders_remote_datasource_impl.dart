// ignore_for_file: avoid_catches_without_on_clauses

import 'dart:developer';

import 'package:bbt/core/app_config.dart';
import 'package:bbt/core/error/exception.dart';
import 'package:bbt/features/data/i_datasources/i_orders_remote_datasource.dart';
import 'package:bbt/features/data/models/order_model.dart';
import 'package:bbt/features/domain/entities/order_entity.dart';
import 'package:bbt/features/domain/entities/user_entity/user_entity.dart';
import 'package:dio/dio.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class OrdersRemoteDatasourceImpl extends IOrdersRemoteDatasource {
  final Dio dio;

  OrdersRemoteDatasourceImpl({required this.dio});

  @override
  Future<String> sendOrder(OrderEntity order) async {
    final parseObject = ParseObject('Orders')
      ..set('dateOrder', order.dateOrder)
      ..set('sumOrder', order.sumOrder)
      ..set('books', order.books)
      ..set('user', (ParseObject('_User')..objectId = order.userId).toPointer());

    final ParseResponse parseResponse = await parseObject.save();

    if (parseResponse.success) {
      final objectId = (parseResponse.results!.first as ParseObject).objectId!;
      log('Object created: $objectId');

      await sendTelegramMessage(order);

      return objectId;
    } else {
      log('Object created with failed: ${parseResponse.error}');
      throw ServerException(error: parseResponse.error?.message);
    }
  }

  @override
  Future<List<OrderModel>> fetchOrders(String userId) async {
    final orders = <OrderModel>[];
    final QueryBuilder<ParseObject> parseQuery = QueryBuilder<ParseObject>(ParseObject('Orders'))
      ..whereEqualTo('user', (ParseObject('_User')..objectId = userId).toPointer())
      ..orderByDescending('dateOrder');
    final apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (final object in apiResponse.results as List<ParseObject>) {
        log('Object: $object');
        orders.add(OrderModel.fromDb(object));
      }
    } else {
      throw ServerException(error: apiResponse.error?.message);
    }

    return orders;
  }

  @override
  Future<void> sendTelegramMessage(OrderEntity order) async {
    try {
      final QueryBuilder<ParseObject> parseQuery = QueryBuilder<ParseObject>(ParseObject('_User'))
        ..whereEqualTo('objectId', order.userId);
      final apiResponse = await parseQuery.query();
      if (apiResponse.success && apiResponse.results != null) {
        final user = UserEntity.fromDb((apiResponse.results as List<ParseObject>).first);
        final dio = Dio();
        await dio.post(
          '${AppConfig.telegramUri}${AppConfig.telegramToken}/sendMessage?chat_id=${AppConfig.chatId}&text=Клиент: ${user.displayName}\nemail: ${user.email}\n$order',
        );
      } else {
        log((apiResponse.error?.message).toString());
        throw ServerException(error: apiResponse.error?.message);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<List<OrderModel>> fetchAllOrders() async {
    log('fetchAllOrders');
    final orders = <OrderModel>[];
    final QueryBuilder<ParseObject> parseQuery = QueryBuilder<ParseObject>(ParseObject('Orders'))
      ..orderByDescending('dateOrder');
    final apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (final object in apiResponse.results as List<ParseObject>) {
        log('Object: $object');
        orders.add(OrderModel.fromDb(object));
      }
    } else {
      throw ServerException(error: apiResponse.error?.message);
    }

    return orders;
  }
}
