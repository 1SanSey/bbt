// ignore_for_file: overridden_fields

import 'package:bbt/features/domain/entities/favorites_book_entity.dart';
import 'package:hive/hive.dart';

part 'favourites_book_model.g.dart';

@HiveType(typeId: 1)
class FavouritesBookModel extends FavoritesBookEntity {
  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final int price;
  @override
  @HiveField(2)
  final String image;

  const FavouritesBookModel({
    required this.name,
    required this.price,
    required this.image,
  }) : super(name: name, price: price, image: image);
}
