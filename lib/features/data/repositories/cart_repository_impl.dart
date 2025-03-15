import 'package:bbt/features/data/i_datasources/i_books_local_datasource.dart';
import 'package:bbt/features/data/i_datasources/i_orders_remote_datasource.dart';
import 'package:bbt/features/data/models/cart_book_model/cart_book_model.dart';
import 'package:bbt/features/domain/entities/cart_book_entity.dart';
import 'package:bbt/features/domain/repositories/i_cart_repository.dart';

class CartRepositoryImpl implements ICartRepository {
  final IBooksLocalDatasource localDataSource;
  final IOrdersRemoteDatasource remoteDataSource;

  CartRepositoryImpl({required this.remoteDataSource, required this.localDataSource});

  @override
  Future<String> addToCart(CartBookEntity book) async {
    final bookForDb = CartBookModel(
      name: book.name,
      price: book.price,
      quantity: book.quantity,
      image: book.image,
    );

    return localDataSource.addToCart(bookForDb);
  }

  @override
  Future<void> removeFromCart(String name, int price) async {
    await localDataSource.removeFromCart(name, price);
  }

  @override
  Future<List<CartBookEntity>> showCart() async {
    return localDataSource.showCart();
  }

  @override
  Future<void> changeQuantityCart(String name, int price, int value) async {
    await localDataSource.changeQuantityCart(name, price, value);
  }

  @override
  Future<int> totalSum() async {
    return localDataSource.totalSum();
  }

  @override
  Future<void> removeAllCart() async {
    return localDataSource.removeAllCart();
  }
}
