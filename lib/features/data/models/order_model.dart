// ignore_for_file: overridden_fields, annotate_overrides

import 'package:bbt/features/domain/entities/order_entity.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class OrderModel extends OrderEntity {
  final String userId;
  final DateTime dateOrder;
  final int sumOrder;
  final Map<String, dynamic> books;
  const OrderModel({
    required this.userId,
    required this.dateOrder,
    required this.sumOrder,
    required this.books,
  }) : super(
          userId: userId,
          dateOrder: dateOrder,
          sumOrder: sumOrder,
          books: books,
        );

  factory OrderModel.fromDb(ParseObject object) {
    return OrderModel(
      userId: object.get<ParseUser>('user')!.objectId!,
      dateOrder: object.get<DateTime>('dateOrder')!,
      sumOrder: object.get<int>('sumOrder')!,
      books: object.get<Map<String, dynamic>>('books')!,
    );
  }
}
