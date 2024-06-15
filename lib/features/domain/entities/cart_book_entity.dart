import 'package:equatable/equatable.dart';

class CartBookEntity extends Equatable {
  final String name;
  final int price;
  final String image;
  final int quantity;

  const CartBookEntity({
    required this.quantity,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  List<Object?> get props => [name, price, quantity];
}
