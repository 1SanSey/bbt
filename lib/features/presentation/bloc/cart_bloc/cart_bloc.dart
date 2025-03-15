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

  Future<void> _addToCart(AddToCartEvent event, Emitter<CartState> emit) async {
    final message = await cart.addToCart(event.book);
    emit(AddToCartState(book: event.book, message: message));
    emit(EmptyCartState());
  }

  Future<void> _removeFromCart(RemoveFromCartEvent event, Emitter<CartState> emit) async {
    await cart.removeFromCart(event.book.name, event.book.price);
    add(ShowCartEvent());
  }

  Future<void> _showCart(ShowCartEvent event, Emitter<CartState> emit) async {
    final List<CartBookEntity> books = await cart.showCart();
    final totalSum = await cart.totalSum();

    emit(ShowCartState(books: books, totalSum: totalSum));
  }

  Future<void> _changeQuantityCart(ChangeQuantityCartEvent event, Emitter<CartState> emit) async {
    await cart.changeQuantityCart(event.book.name, event.book.price, event.value);
    add(ShowCartEvent());
  }

  Future<void> _removeAll(RemoveAllCartEvent event, Emitter<CartState> emit) async {
    await cart.removeAllCart();
    emit(EmptyCartState());
  }
}
