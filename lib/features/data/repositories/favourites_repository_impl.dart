import 'package:bbt/features/data/i_datasources/i_books_local_datasource.dart';
import 'package:bbt/features/data/models/favourites_book_model/favourites_book_model.dart';
import 'package:bbt/features/domain/entities/favorites_book_entity.dart';
import 'package:bbt/features/domain/repositories/i_favourites_repository.dart';

class FavouritesRepositoryImpl implements IFavouritesRepository {
  final IBooksLocalDatasource hiveDataSource;

  FavouritesRepositoryImpl({
    required this.hiveDataSource,
  });

  @override
  String addToFavourites(FavoritesBookEntity book) {
    final hiveBook = FavouritesBookModel(
      name: book.name,
      price: book.price,
      image: book.image,
    );

    return hiveDataSource.addToFavourites(hiveBook);
  }

  @override
  void removeFromFavourites(FavoritesBookEntity book, int index) {
    final hiveBook = FavouritesBookModel(name: book.name, price: book.price, image: book.image);
    hiveDataSource.removeFromFavourites(hiveBook, index);
  }

  @override
  List<FavoritesBookEntity> showFavourites() {
    return hiveDataSource.showFavourites();
  }

  @override
  void removeAllFavourites() {
    return hiveDataSource.removeAllFavourites();
  }
}
