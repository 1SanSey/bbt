import 'package:bbt/features/domain/entities/favorites_book_entity.dart';

abstract class IFavouritesRepository {
  Future<String> addToFavourites(FavoritesBookEntity book);
  Future<void> removeFromFavourites(String name, int price);
  Future<void> removeAllFavourites();
  Future<List<FavoritesBookEntity>> showFavourites();
}
