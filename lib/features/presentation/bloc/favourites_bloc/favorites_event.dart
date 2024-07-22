part of 'favourites_bloc.dart';

abstract class FavouritesEvent extends Equatable {
  const FavouritesEvent();

  @override
  List<Object> get props => [];
}

class ShowFavouritesEvent extends FavouritesEvent {}

class AddToFavouritesEvent extends FavouritesEvent {
  final FavoritesBookEntity book;

  const AddToFavouritesEvent({required this.book});
}

class RemoveFromFavouritesEvent extends FavouritesEvent {
  final FavoritesBookEntity book;
  final int index;

  const RemoveFromFavouritesEvent({required this.book, required this.index});
}

class RemoveFavouritesEvent extends FavouritesEvent {}
