import 'package:bbt/features/data/models/cart_book_model/cart_book_model.dart';
import 'package:bbt/features/data/models/favourites_book_model/favourites_book_model.dart';

abstract class IBooksLocalDatasource {
  Future<String> addToCart(CartBookModel book);
  Future<void> removeFromCart(String name, int price);
  Future<void> changeQuantityCart(String name, int price, int value);
  Future<List<CartBookModel>> showCart();
  Future<String> addToFavourites(FavouritesBookModel book);
  Future<void> removeFromFavourites(String name, int price);
  Future<List<FavouritesBookModel>> showFavourites();
  Future<int> totalSum();
  Future<void> removeAllCart();
  Future<void> removeAllFavourites();
}
