part of 'category_bloc.dart';

sealed class CategoryState extends Equatable {
  final int currentIndex;
  const CategoryState({this.currentIndex = 0});

  @override
  List<Object?> get props => [];
}

class CategoryBooksEmpty extends CategoryState {
  const CategoryBooksEmpty({super.currentIndex});

  @override
  List<Object?> get props => [];
}

class CategoryBooksLoading extends CategoryState {
  const CategoryBooksLoading({super.currentIndex});

  @override
  List<Object?> get props => [];
}

class CategoryBooksLoaded extends CategoryState {
  final List<BookEntity> books;

  const CategoryBooksLoaded({required this.books, super.currentIndex});

  @override
  List<Object?> get props => [books, currentIndex];
}

class CategoryBooksError extends CategoryState {
  final String message;

  const CategoryBooksError({required this.message, super.currentIndex});

  @override
  List<Object?> get props => [message, currentIndex];
}
