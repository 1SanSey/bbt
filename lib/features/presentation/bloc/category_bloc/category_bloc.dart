import 'dart:async';

import 'package:bbt/common/failure_to_message.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/domain/usecases/categories/categories_usecases.dart';
import 'package:bbt/features/domain/usecases/categories/search_books_usecases.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final AllBooksUsecase allBooks;
  final CulinaryBooksUsecase culinaryBooks;
  final BooksBySizeUsecase booksBySize;
  final BooksByNameUsecase booksByName;
  final SetBooksUsecase setBooks;
  final SearchBooksUsecase searchBooks;

  CategoryBloc({
    required this.booksByName,
    required this.setBooks,
    required this.booksBySize,
    required this.allBooks,
    required this.culinaryBooks,
    required this.searchBooks,
  }) : super(const CategoryBooksEmpty()) {
    on<CategoryLoadAllBooksEvent>(_onEventAllBooks, transformer: droppable());
    on<CategoryLoadBooksBySizeEvent>(
      _onEventBooksBySize,
      transformer: droppable(),
    );
    on<CategoryLoadBooksByNameEvent>(
      _onEventBooksByName,
      transformer: droppable(),
    );
    on<CategoryLoadBooksSetEvent>(_onEventBooksSet, transformer: droppable());
    on<CategoryLoadCulinaryBooksEvent>(
      _onEventCulinaryBooks,
      transformer: droppable(),
    );
    on<CategorySearchBooksEvent>(_onEventSearchBooks, transformer: droppable());
  }

  FutureOr<void> _onEventAllBooks(
    CategoryLoadAllBooksEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoryBooksLoading());

    final failureOrBooks = await allBooks();

    failureOrBooks.fold(
      (failure) => emit(CategoryBooksError(message: mapFailureToMessage(failure))),
      (books) {
        emit(CategoryBooksLoaded(books: books));
      },
    );
  }

  FutureOr<void> _onEventBooksBySize(
    CategoryLoadBooksBySizeEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoryBooksLoading());

    final failureOrBooks = await booksBySize(BookSizeParams(size: event.param));

    failureOrBooks.fold(
      (failure) => emit(CategoryBooksError(message: mapFailureToMessage(failure))),
      (books) {
        emit(CategoryBooksLoaded(books: books));
      },
    );
  }

  FutureOr<void> _onEventBooksByName(
    CategoryLoadBooksByNameEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoryBooksLoading());

    final failureOrBooks = await booksByName(BookNameParams(name: event.param));

    failureOrBooks.fold(
      (failure) => emit(CategoryBooksError(message: mapFailureToMessage(failure))),
      (books) {
        emit(CategoryBooksLoaded(books: books));
      },
    );
  }

  FutureOr<void> _onEventBooksSet(
    CategoryLoadBooksSetEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoryBooksLoading());

    final failureOrBooks = await setBooks(BookSetParams(singleOrSet: event.param));

    failureOrBooks.fold(
      (failure) => emit(CategoryBooksError(message: mapFailureToMessage(failure))),
      (books) {
        emit(CategoryBooksLoaded(books: books));
      },
    );
  }

  FutureOr<void> _onEventCulinaryBooks(
    CategoryLoadCulinaryBooksEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoryBooksLoading());

    final failureOrBooks = await culinaryBooks();

    failureOrBooks.fold(
      (failure) => emit(CategoryBooksError(message: mapFailureToMessage(failure))),
      (books) {
        emit(CategoryBooksLoaded(books: books));
      },
    );
  }

  FutureOr<void> _onEventSearchBooks(
    CategorySearchBooksEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(CategoryBooksLoading(currentIndex: state.currentIndex));

    final failureOrBooks = await searchBooks(SearchBooksParams(query: event.query));

    failureOrBooks.fold(
      (failure) => emit(CategoryBooksError(message: mapFailureToMessage(failure))),
      (books) {
        emit(CategoryBooksLoaded(books: books));
      },
    );
  }
}
