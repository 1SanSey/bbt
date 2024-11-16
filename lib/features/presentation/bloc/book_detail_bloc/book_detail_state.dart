part of 'book_detail_bloc.dart';

sealed class BookDetailState extends Equatable {
  final BookEntity? book;

  const BookDetailState({this.book});

  @override
  List<Object?> get props => [book];
}

class BookDetailEmpty extends BookDetailState {
  const BookDetailEmpty({super.book});
}

class BookDetailLoading extends BookDetailState {
  const BookDetailLoading({super.book});

  @override
  List<Object?> get props => [book];
}

class BookDetailLoaded extends BookDetailState {
  const BookDetailLoaded({required super.book});

  @override
  List<Object?> get props => [book];
}

class BookDetailError extends BookDetailState {
  final String message;

  const BookDetailError({required this.message, super.book});

  @override
  List<Object?> get props => [message, book];
}
