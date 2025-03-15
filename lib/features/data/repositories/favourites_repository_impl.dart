import 'package:bbt/features/data/i_datasources/i_books_local_datasource.dart';
import 'package:bbt/features/data/models/favourites_book_model/favourites_book_model.dart';
import 'package:bbt/features/domain/entities/favorites_book_entity.dart';
import 'package:bbt/features/domain/repositories/i_favourites_repository.dart';

class FavouritesRepositoryImpl implements IFavouritesRepository {
  final IBooksLocalDatasource hiveDataSource;

  FavouritesRepositoryImpl({required this.hiveDataSource});

  @override
  Future<String> addToFavourites(FavoritesBookEntity book) async {
    final bookForDb = FavouritesBookModel(name: book.name, price: book.price, image: book.image);

    return hiveDataSource.addToFavourites(bookForDb);
  }

  @override
  Future<void> removeFromFavourites(String name, int price) async {
    await hiveDataSource.removeFromFavourites(name, price);
  }

  @override
  Future<List<FavoritesBookEntity>> showFavourites() async {
    return hiveDataSource.showFavourites();
  }

  @override
  Future<void> removeAllFavourites() async {
    return hiveDataSource.removeAllFavourites();
  }
}
