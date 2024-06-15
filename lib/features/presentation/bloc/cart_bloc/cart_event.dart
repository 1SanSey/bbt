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
  final int index;

  const RemoveFromCartEvent({required this.index});
}

class ChangeQuantityCartEvent extends CartEvent {
  final int index;
  final int value;

  const ChangeQuantityCartEvent({required this.index, required this.value});
}

class RemoveAllCartEvent extends CartEvent {}
