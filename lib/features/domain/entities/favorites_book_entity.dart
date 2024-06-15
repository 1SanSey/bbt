import 'package:equatable/equatable.dart';

class FavoritesBookEntity extends Equatable {
  final String name;
  final int price;
  final String image;

  const FavoritesBookEntity({
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  List<Object?> get props => [name, price];
}
