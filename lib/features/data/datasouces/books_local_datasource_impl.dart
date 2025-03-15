import 'dart:developer';

import 'package:bbt/core/app_database.dart';
import 'package:bbt/core/logger/logger_service.dart';
import 'package:bbt/features/data/i_datasources/i_books_local_datasource.dart';
import 'package:bbt/features/data/models/cart_book_model/cart_book_model.dart';
import 'package:bbt/features/data/models/favourites_book_model/favourites_book_model.dart';
import 'package:sembast/sembast.dart';

class BooksLocalDatasourceImpl extends IBooksLocalDatasource {
  final _cartStore = intMapStoreFactory.store('cart');
  final _favouritesStore = intMapStoreFactory.store('favourites');

  @override
  Future<String> addToCart(CartBookModel book) async {
    try {
      final db = await AppDatabase.instance.database;
      final isExist = await _cartStore.findFirst(
        db,
        finder: Finder(filter: Filter.equals('name', book.name)),
      );

      if (isExist != null) {
        return 'Товар уже есть в корзине!';
      }

      await _cartStore.add(db, book.toJson());
      return 'Товар добавлен в корзину!';
    } catch (e) {
      throw Exception('Error addToCart $e');
    }
  }

  @override
  Future<void> removeFromCart(String name, int price) async {
    try {
      log('removeFromCart name $name');

      final db = await AppDatabase.instance.database;
      final del = await _cartStore.delete(
        db,
        finder: Finder(
          filter: Filter.and(
            [
              Filter.equals('name', name),
              Filter.equals('price', price),
            ],
          ),
        ),
      );
      log('removeFromCart del $del');
    } catch (e) {
      throw Exception('Error removeFromCart $e');
    }
  }

  @override
  Future<List<CartBookModel>> showCart() async {
    try {
      final db = await AppDatabase.instance.database;
      final records = await _cartStore.find(db);
      final v = records.map((record) => record.key).toList();
      log('showCart $v');
      return records.map((record) => CartBookModel.fromJson(record.value)).toList();
    } catch (e) {
      throw Exception('Error showCart $e');
    }
  }

  @override
  Future<int> totalSum() async {
    try {
      final db = await AppDatabase.instance.database;
      final records = await _cartStore.find(db);

      // Используем fold с явным указанием типа начального значения
      return records.fold<int>(0, (sum, record) {
        final book = CartBookModel.fromJson(record.value);
        return sum + book.price * book.quantity;
      });
    } catch (e) {
      throw Exception('Error totalSum $e');
    }
  }

  @override
  Future<void> changeQuantityCart(String name, int price, int value) async {
    try {
      final db = await AppDatabase.instance.database;

      // Находим запись по названию и цене
      final record = await _cartStore.findFirst(
        db,
        finder: Finder(
          filter: Filter.and([
            Filter.equals('name', name),
            Filter.equals('price', price),
          ]),
        ),
      );

      // Если запись найдена, обновляем количество
      if (record != null) {
        final CartBookModel book = CartBookModel.fromJson(record.value)..quantity = value;
        await _cartStore.record(record.key).put(db, book.toJson());
      } else {
        throw Exception('Товар с названием "$name" и ценой $price не найден');
      }
    } catch (e) {
      throw Exception('Error changeQuantityCart: $e');
    }
  }

  @override
  Future<void> removeAllCart() async {
    try {
      final db = await AppDatabase.instance.database;
      await _cartStore.delete(db);
    } catch (e) {
      throw Exception('Error removeAllCart $e');
    }
  }

  @override
  Future<String> addToFavourites(FavouritesBookModel book) async {
    try {
      final db = await AppDatabase.instance.database;
      final isExist = await _favouritesStore.findFirst(
        db,
        finder: Finder(filter: Filter.equals('name', book.name)),
      );

      if (isExist != null) {
        return 'Товар уже есть в Избранном!';
      }

      await _favouritesStore.add(db, book.toJson());
      logw('addToFavourites');
      return 'Товар добавлен в Избранное!';
    } catch (e) {
      throw Exception('Error addToFavourites $e');
    }
  }

  @override
  Future<void> removeFromFavourites(String name, int price) async {
    try {
      final db = await AppDatabase.instance.database;
      log('removeFromFavourites $name');
      final del = await _favouritesStore.delete(db, finder: Finder(
          filter: Filter.and(
            [
              Filter.equals('name', name),
              Filter.equals('price', price),
            ],
          ),
        ),
      );
      log('removeFromFavourites $del');
    } catch (e) {
      throw Exception('Error removeFromFavourites $e');
    }
  }

  @override
  Future<List<FavouritesBookModel>> showFavourites() async {
    try {
      final db = await AppDatabase.instance.database;
      final records = await _favouritesStore.find(db);
      return records.map((record) => FavouritesBookModel.fromJson(record.value)).toList();
    } catch (e) {
      throw Exception('Error showFavourites $e');
    }
  }

  @override
  Future<void> removeAllFavourites() async {
    try {
      final db = await AppDatabase.instance.database;
      await _favouritesStore.delete(db);
    } catch (e) {
      throw Exception('Error removeAllFavourites $e');
    }
  }
}
