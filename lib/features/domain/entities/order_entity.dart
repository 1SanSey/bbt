// ignore_for_file: leading_newlines_in_multiline_strings

import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

class OrderEntity extends Equatable {
  final String userId;
  final DateTime dateOrder;
  final int sumOrder;
  final Map<String, dynamic> books;

  const OrderEntity({
    required this.userId,
    required this.dateOrder,
    required this.sumOrder,
    required this.books,
  });

  @override
  List<Object?> get props => [userId, dateOrder, sumOrder, books];

  @override
  String toString() {
    final date = DateFormat('dd.MM.y HH:mm', 'ru').format(dateOrder);

    return '''userId: $userId,\nДата заказа: $date,\nСумма заказа: $sumOrder руб.,\nКниги: $books''';
  }
}
