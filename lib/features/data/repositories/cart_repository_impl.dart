import 'package:bbt/core/platform/network_info.dart';
import 'package:bbt/features/data/i_datasources/i_books_local_datasource.dart';
import 'package:bbt/features/data/i_datasources/i_orders_remote_datasource.dart';
import 'package:bbt/features/data/models/cart_book_model/cart_book_model.dart';
import 'package:bbt/features/domain/entities/cart_book_entity.dart';
import 'package:bbt/features/domain/repositories/i_cart_repository.dart';

class CartRepositoryImpl implements ICartRepository {
  final IBooksLocalDatasource localDataSource;
  final IOrdersRemoteDatasource remoteDataSource;
  final NetworkInfo networkInfo;

  CartRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
    required this.localDataSource,
  });

  @override
  String addToCart(CartBookEntity book) {
    final hiveBook = CartBookModel(
      name: book.name,
      price: book.price,
      quantity: book.quantity,
      image: book.image,
    );

    return localDataSource.addToCart(hiveBook);
  }

  @override
  void removeFromCart(int index) {
    localDataSource.removeFromCart(index);
  }

  @override
  List<CartBookEntity> showCart() {
    return localDataSource.showCart();
  }

  @override
  void changeQuantityCart(int index, int value) {
    localDataSource.changeQuantityCart(index, value);
  }

  @override
  int totalSum() {
    return localDataSource.totalSum();
  }

  @override
  void removeAllCart() {
    return localDataSource.removeAllCart();
  }
}
