part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class EmptyCartEvent extends CartEvent {}

class ShowCartEvent extends CartEvent {}

class AddToCartEvent extends CartEvent {
  final CartBookEntity book;

  const AddToCartEvent({required this.book});
}

class RemoveFromCartEvent extends CartEvent {
  final CartBookEntity book;

  const RemoveFromCartEvent({required this.book});
}

class ChangeQuantityCartEvent extends CartEvent {
  final CartBookEntity book;
  final int value;

  const ChangeQuantityCartEvent({required this.book, required this.value});
}

class RemoveAllCartEvent extends CartEvent {}
