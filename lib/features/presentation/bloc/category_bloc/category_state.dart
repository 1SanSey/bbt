// ignore_for_file: annotate_overrides

part of 'category_bloc.dart';

sealed class CategoryState extends Equatable {
  final Map<String, List<BookEntity>>? map;
  final List<BookEntity> books;
  const CategoryState({this.map, this.books = const []});

  @override
  List<Object?> get props => [];
}

class CategoryBooksEmpty extends CategoryState {
  const CategoryBooksEmpty({super.map, super.books});

  @override
  List<Object?> get props => [];
}

class CategoryBooksLoading extends CategoryState {
  const CategoryBooksLoading({super.map, super.books});

  @override
  List<Object?> get props => [];
}

class CategoryBooksLoaded extends CategoryState {
  final List<BookEntity> books;
  final Map<String, List<BookEntity>>? map;

  const CategoryBooksLoaded({required this.books, required this.map});

  @override
  String toString() {
    return 'CategoryBooksLoaded ${books.length}';
  }

  @override
  List<Object?> get props => [books, map];
}

class CategoryBooksError extends CategoryState {
  final String message;

  const CategoryBooksError({required this.message, super.map, super.books});

  @override
  List<Object?> get props => [message, map];
}
