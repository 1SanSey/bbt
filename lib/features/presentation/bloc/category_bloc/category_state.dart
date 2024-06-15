part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object?> get props => [];
}

class CategoryBooksEmpty extends CategoryState {}

class CategoryBooksLoading extends CategoryState {}

class CategoryBooksLoaded extends CategoryState {
  final List<BookEntity> books;

  const CategoryBooksLoaded({required this.books});

  @override
  List<Object?> get props => [books];
}

class CategoryBooksError extends CategoryState {
  final String message;

  const CategoryBooksError({required this.message});

  @override
  List<Object?> get props => [message];
}
