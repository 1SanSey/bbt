import 'package:bbt/features/domain/entities/cart_book_entity.dart';
import 'package:bbt/features/domain/usecases/cart_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartUsecase cart;

  CartBloc({required this.cart}) : super(EmptyCartState()) {
    on<AddToCartEvent>(_addToCart);
    on<RemoveFromCartEvent>(_removeFromCart);
    on<ShowCartEvent>(_showCart);
    on<ChangeQuantityCartEvent>(_changeQuantityCart);
    on<RemoveAllCartEvent>(_removeAll);
  }

  void _addToCart(AddToCartEvent event, Emitter<CartState> emit) {
    final message = cart.addToCart(event.book);
    emit(AddToCartState(book: event.book, message: message));
    emit(EmptyCartState());
  }

  void _removeFromCart(RemoveFromCartEvent event, Emitter<CartState> emit) {
    cart.removeFromCart(event.index);
    add(ShowCartEvent());
  }

  void _showCart(ShowCartEvent event, Emitter<CartState> emit) {
    final List<CartBookEntity> books = cart.showCart();
    final totalSum = cart.totalSum();

    emit(ShowCartState(books: books, totalSum: totalSum));
  }

  void _changeQuantityCart(ChangeQuantityCartEvent event, Emitter<CartState> emit) {
    cart.changeQuantityCart(event.index, event.value);
    add(ShowCartEvent());
  }

  void _removeAll(RemoveAllCartEvent event, Emitter<CartState> emit) {
    cart.removeAllCart();
    emit(EmptyCartState());
  }
}
