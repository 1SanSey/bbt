import 'package:equatable/equatable.dart';

class BookEntity extends Equatable {
  final String name;
  final int price;
  final bool isPopular;
  final String? thumbnail;
  final String? image;
  final String? description;
  final String? size;
  final String? singleOrSet;
  final int? quantity;

  const BookEntity({
    required this.name,
    required this.price,
    required this.isPopular,
    required this.thumbnail,
    required this.image,
    required this.description,
    required this.size,
    required this.singleOrSet,
    this.quantity,
  });

  @override
  List<Object?> get props => [name, price];
}
