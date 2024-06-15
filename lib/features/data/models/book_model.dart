// ignore_for_file: annotate_overrides, overridden_fields

import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class BookModel extends BookEntity {
  final String name;
  final int price;
  final bool isPopular;
  final String? image;
  final String? description;
  final String? size;
  final String? singleOrSet;
  final int? quantity;

  const BookModel({
    required this.name,
    required this.price,
    required this.isPopular,
    required this.image,
    required this.description,
    required this.size,
    required this.singleOrSet,
    this.quantity,
  }) : super(
          name: name,
          price: price,
          isPopular: isPopular,
          image: image,
          description: description,
          size: size,
          singleOrSet: singleOrSet,
        );

  factory BookModel.fromDb(ParseObject object) {
    return BookModel(
      name: object.get<String>('name')!,
      price: object.get<int>('price')!,
      isPopular: object.get<bool>('isPopular')!,
      image: object.get<String>('image') ?? '',
      description: object.get<String>('description') ?? '',
      size: object.get<String>('size') ?? '',
      singleOrSet: object.get<String>('singleOrSet') ?? '',
      quantity: object.get<int>('quantity'),
    );
  }
}
