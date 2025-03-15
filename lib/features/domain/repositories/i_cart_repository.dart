import 'package:bbt/features/domain/entities/cart_book_entity.dart';

abstract class ICartRepository {
  Future<String> addToCart(CartBookEntity book);
  Future<void> removeFromCart(String name, int price);
  Future<void> changeQuantityCart(String name, int price, int value);
  Future<List<CartBookEntity>> showCart();
  Future<int> totalSum();
  Future<void> removeAllCart();
}
