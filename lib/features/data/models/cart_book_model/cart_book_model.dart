// ignore_for_file: overridden_fields, must_be_immutable, annotate_overrides

import 'package:bbt/features/domain/entities/cart_book_entity.dart';

class CartBookModel extends CartBookEntity {
  final String name;
  final int price;
  final String image;
  int quantity;

  CartBookModel({
    required this.name,
    required this.price,
    required this.image,
    required this.quantity,
  }) : super(quantity: quantity, name: name, price: price, image: image);

  Map<String, dynamic> toJson() => {
    'name': name,
    'price': price,
    'image': image,
    'quantity': quantity,
  };

  factory CartBookModel.fromJson(Map<String, dynamic> json) => CartBookModel(
    name: json['name'],
    price: json['price'],
    image: json['image'],
    quantity: json['quantity'],
  );
}
