import 'package:bbt/features/domain/entities/favorites_book_entity.dart';
import 'package:bbt/features/domain/usecases/favourites_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'favorites_event.dart';
part 'favourites_state.dart';

class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  final FavouritesUsecase favourites;

  FavouritesBloc({required this.favourites}) : super(EmptyFavouritesState()) {
    on<AddToFavouritesEvent>(_addToFavourites);
    on<RemoveFromFavouritesEvent>(_removeFromFavourites);
    on<ShowFavouritesEvent>(_showFavourites);
    on<RemoveFavouritesEvent>(_removeAllFavourites);
  }

  Future<void> _addToFavourites(AddToFavouritesEvent event, Emitter<FavouritesState> emit) async {
    final String message = await favourites.addToFavourites(event.book);

    emit(AddToFavouritesState(book: event.book, message: message));
  }

  Future<void> _removeFromFavourites(
    RemoveFromFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await favourites.removeFromFavourites(event.book.name, event.book.price);
    final books = await favourites.showFavourites();

    emit(ShowFavouritesState(books: books));
  }

  Future<void> _showFavourites(ShowFavouritesEvent _, Emitter<FavouritesState> emit) async {
    final books = await favourites.showFavourites();

    emit(ShowFavouritesState(books: books));
  }

  Future<void> _removeAllFavourites(RemoveFavouritesEvent _, Emitter<FavouritesState> emit) async {
    await favourites.removeAllFavourites();

    emit(EmptyFavouritesState());
  }
}
