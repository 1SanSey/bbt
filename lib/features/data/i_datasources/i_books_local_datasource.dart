import 'package:bbt/features/data/models/cart_book_model/cart_book_model.dart';
import 'package:bbt/features/data/models/favourites_book_model/favourites_book_model.dart';

abstract class IBooksLocalDatasource {
  String addToCart(CartBookModel book);
  void removeFromCart(int index);
  void changeQuantityCart(int index, int value);
  List<CartBookModel> showCart();
  String addToFavourites(FavouritesBookModel book);
  void removeFromFavourites(FavouritesBookModel book, int index);
  List<FavouritesBookModel> showFavourites();
  int totalSum();
  void removeAllCart();
}
