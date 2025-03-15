import 'package:bbt/features/domain/entities/favorites_book_entity.dart';
import 'package:bbt/features/domain/repositories/i_favourites_repository.dart';

class FavouritesUsecase {
  final IFavouritesRepository favouritesRepository;

  FavouritesUsecase(this.favouritesRepository);

  Future<String> addToFavourites(FavoritesBookEntity book) async {
    return favouritesRepository.addToFavourites(book);
  }

  Future<void> removeFromFavourites(String name, int price) async {
    await favouritesRepository.removeFromFavourites(name, price);
  }

  Future<List<FavoritesBookEntity>> showFavourites() async {
    return favouritesRepository.showFavourites();
  }

  Future<void> removeAllFavourites() async {
    await favouritesRepository.removeAllFavourites();
  }
}
