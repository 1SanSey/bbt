import 'package:bbt/features/domain/entities/cart_book_entity.dart';
import 'package:bbt/features/domain/repositories/i_cart_repository.dart';

class CartUsecase {
  final ICartRepository cartRepository;

  CartUsecase(this.cartRepository);

  Future<String> addToCart(CartBookEntity book) async {
    return cartRepository.addToCart(book);
  }

  Future<void> removeFromCart(String name, int price) async {
    await cartRepository.removeFromCart(name, price);
  }

  Future<void> changeQuantityCart(String name, int price, int value) async {
    await cartRepository.changeQuantityCart(name, price, value);
  }

  Future<List<CartBookEntity>> showCart() async {
    return cartRepository.showCart();
  }

  Future<int> totalSum() async {
    return cartRepository.totalSum();
  }

  Future<void> removeAllCart() async {
    await cartRepository.removeAllCart();
  }
}
