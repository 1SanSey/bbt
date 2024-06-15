part of 'home_books_bloc.dart';

sealed class HomeBooksState extends Equatable {
  final List<BookEntity> books;

  const HomeBooksState({this.books = const []});

  @override
  List<Object?> get props => [books];
}

class HomeBooksEmpty extends HomeBooksState {
  const HomeBooksEmpty({super.books});
}

class HomeBooksLoading extends HomeBooksState {
  const HomeBooksLoading({super.books});

  @override
  List<Object?> get props => [books];
}

class HomeBooksLoaded extends HomeBooksState {
  const HomeBooksLoaded({required super.books});

  @override
  List<Object?> get props => [books];
}

class HomeBooksError extends HomeBooksState {
  final String message;

  const HomeBooksError({required this.message, super.books});

  @override
  List<Object?> get props => [message, books];
}
