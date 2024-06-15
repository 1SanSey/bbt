part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object?> get props => [];
}

class EmptyCartState extends CartState {}

class AddToCartState extends CartState {
  final CartBookEntity book;
  final String message;

  const AddToCartState({required this.message, required this.book});

  @override
  List<Object?> get props => [book, message];
}

class RemoveFromCartState extends CartState {
  final CartBookEntity book;

  const RemoveFromCartState({required this.book});

  @override
  List<Object?> get props => [book];
}

class ShowCartState extends CartState {
  final List<CartBookEntity> books;
  final int totalSum;

  const ShowCartState({required this.totalSum, required this.books});

  @override
  List<Object?> get props => [books, totalSum];
}

class ChangeQuantityCartState extends CartState {
  final int index;
  final int value;

  const ChangeQuantityCartState({required this.index, required this.value});

  @override
  List<Object?> get props => [index, value];
}
