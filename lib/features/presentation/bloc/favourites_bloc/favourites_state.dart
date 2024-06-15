part of 'favourites_bloc.dart';

abstract class FavouritesState extends Equatable {
  const FavouritesState();

  @override
  List<Object?> get props => [];
}

class EmptyFavouritesState extends FavouritesState {}

class AddToFavouritesState extends FavouritesState {
  final FavoritesBookEntity book;
  final String message;

  const AddToFavouritesState({required this.message, required this.book});

  @override
  List<Object?> get props => [book, message];
}

class RemoveFromFavouritesState extends FavouritesState {
  final FavoritesBookEntity book;

  const RemoveFromFavouritesState({required this.book});

  @override
  List<Object?> get props => [book];
}

class ShowFavouritesState extends FavouritesState {
  final List<FavoritesBookEntity> books;

  const ShowFavouritesState({required this.books});

  @override
  List<Object?> get props => [books];
}
