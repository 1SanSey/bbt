import 'package:bbt/core/hive_names.dart';
import 'package:bbt/features/data/i_datasources/i_books_local_datasource.dart';
import 'package:bbt/features/data/models/cart_book_model/cart_book_model.dart';
import 'package:bbt/features/data/models/favourites_book_model/favourites_book_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BooksLocalDatasourceImpl extends IBooksLocalDatasource {
  Box<CartBookModel> cartBox = Hive.box<CartBookModel>(HiveBoxes.cart);

  @override
  String addToCart(CartBookModel book) {
    bool isExist = false;
    String message = '';

    if (cartBox.values.isNotEmpty) {
      for (final item in cartBox.values) {
        if (item.name == book.name) {
          isExist = true;
          message = 'Товар уже есть в корзине!';
          break;
        }
      }
      if (!isExist) {
        cartBox.add(CartBookModel(
          name: book.name,
          price: book.price,
          image: book.image,
          quantity: book.quantity,
        ));

        message = 'Товар добавлен в корзину!';
      }
    } else {
      cartBox.add(CartBookModel(
        name: book.name,
        price: book.price,
        image: book.image,
        quantity: book.quantity,
      ));

      message = 'Товар добавлен в корзину!';
    }

    return message;
  }

  @override
  void removeFromCart(int index) {
    cartBox.deleteAt(index);
  }

  @override
  List<CartBookModel> showCart() {
    return cartBox.values.toList();
  }

  @override
  int totalSum() {
    int sum = 0;
    for (final value in cartBox.values) {
      sum = sum + value.price * value.quantity;
    }

    return sum;
  }

  @override
  Future<void> changeQuantityCart(int index, int value) async {
    final currentItem = cartBox.getAt(index);
    currentItem?.quantity = value;
    await cartBox.putAt(index, currentItem!);
  }

  @override
  void removeAllCart() {
    cartBox.clear();
  }

  Box<FavouritesBookModel> favouritesBox = Hive.box<FavouritesBookModel>(HiveBoxes.favourites);

  @override
  String addToFavourites(FavouritesBookModel book) {
    bool isExist = false;
    String message = '';

    if (favouritesBox.values.isNotEmpty) {
      for (final item in favouritesBox.values) {
        if (item.name == book.name) {
          isExist = true;
          message = 'Товар уже есть в Избранном!';
          break;
        }
      }
      if (!isExist) {
        favouritesBox.add(FavouritesBookModel(
          name: book.name,
          price: book.price,
          image: book.image,
        ));

        message = 'Товар добавлен в Избранное!';
      }
    } else {
      favouritesBox.add(FavouritesBookModel(
        name: book.name,
        price: book.price,
        image: book.image,
      ));

      message = 'Товар добавлен в Избранное!';
    }

    return message;
  }

  @override
  void removeFromFavourites(FavouritesBookModel book, int index) {
    favouritesBox.deleteAt(index);
  }

  @override
  List<FavouritesBookModel> showFavourites() {
    return favouritesBox.values.toList();
  }
}
