// ignore_for_file: overridden_fields, must_be_immutable

import 'package:bbt/features/domain/entities/cart_book_entity.dart';
import 'package:hive/hive.dart';

part 'cart_book_model.g.dart';

@HiveType(typeId: 0)
class CartBookModel extends CartBookEntity {
  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final int price;
  @override
  @HiveField(2)
  final String image;
  @override
  @HiveField(3)
  int quantity;

  CartBookModel({
    required this.name,
    required this.price,
    required this.quantity,
    required this.image,
  }) : super(quantity: quantity, name: name, price: price, image: image);
}
