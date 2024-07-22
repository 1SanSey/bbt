import 'package:bbt/features/domain/entities/favorites_book_entity.dart';

abstract class IFavouritesRepository {
  String addToFavourites(FavoritesBookEntity book);
  void removeFromFavourites(FavoritesBookEntity book, int index);
  void removeAllFavourites();
  List<FavoritesBookEntity> showFavourites();
}
