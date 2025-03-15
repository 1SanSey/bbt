// ignore_for_file: overridden_fields, annotate_overrides

import 'package:bbt/features/domain/entities/favorites_book_entity.dart';

class FavouritesBookModel extends FavoritesBookEntity {
  final String name;
  final int price;
  final String image;

  const FavouritesBookModel({required this.name, required this.price, required this.image})
    : super(name: name, price: price, image: image);

  Map<String, dynamic> toJson() => {'name': name, 'price': price, 'image': image};

  factory FavouritesBookModel.fromJson(Map<String, dynamic> json) =>
      FavouritesBookModel(name: json['name'], price: json['price'], image: json['image']);
}
