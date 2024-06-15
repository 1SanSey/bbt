import 'package:bbt/features/domain/entities/favorites_book_entity.dart';
import 'package:bbt/features/domain/repositories/i_favourites_repository.dart';

class FavouritesUsecase {
  final IFavouritesRepository favouritesRepository;

  FavouritesUsecase(this.favouritesRepository);

  String addToFavourites(FavoritesBookEntity book) {
    return favouritesRepository.addToFavourites(book);
  }

  void removeFromFavourites(FavoritesBookEntity book, int index) {
    favouritesRepository.removeFromFavourites(book, index);
  }

  List<FavoritesBookEntity> showFavourites() {
    return favouritesRepository.showFavourites();
  }
}
