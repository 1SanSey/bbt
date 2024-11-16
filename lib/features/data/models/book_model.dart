// ignore_for_file: annotate_overrides, overridden_fields

import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class BookModel extends BookEntity {
  final int id;
  final String name;
  final int price;
  final bool isPopular;
  final String? thumbnail;
  final String? image;
  final String? description;
  final String? size;
  final String? singleOrSet;
  final int quantity;

  const BookModel({
    required this.id,
    required this.name,
    required this.price,
    required this.isPopular,
    required this.image,
    required this.thumbnail,
    required this.description,
    required this.size,
    required this.singleOrSet,
    required this.quantity,
  }) : super(
          id: id,
          name: name,
          price: price,
          isPopular: isPopular,
          thumbnail: thumbnail,
          image: image,
          description: description,
          size: size,
          singleOrSet: singleOrSet,
          quantity: quantity,
        );

  factory BookModel.fromDb(ParseObject object) {
    return BookModel(
      id: object.get<int>('idBook')!,
      name: object.get<String>('name')!,
      price: object.get<int>('price')!,
      isPopular: object.get<String>('extraCategory') != null
          ? object.get<String>('extraCategory')!.contains('popular')
          : false,
      thumbnail: object.get<String>('thumbnail') ?? '',
      image: object.get<String>('image') ?? '',
      description: object.get<String>('description') ?? '',
      size: object.get<String>('size') ?? '',
      singleOrSet: object.get<String>('singleOrSet') ?? '',
      quantity: object.get<int>('quantity') ?? 1,
    );
  }
}
