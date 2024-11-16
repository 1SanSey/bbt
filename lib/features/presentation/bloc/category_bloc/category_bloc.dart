import 'dart:async';

import 'package:bbt/common/failure_to_message.dart';
import 'package:bbt/core/app_constants.dart';
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
  final OtherBooksUsecase otherBooks;
  final BooksBySizeUsecase booksBySize;
  final BooksByNameUsecase booksByName;
  final SetBooksUsecase setBooks;
  final SearchBooksUsecase searchBooks;
  final Map<String, List<BookEntity>> _map = {
    AppCategories.all.$3: [],
    AppCategories.small.$3: [],
    AppCategories.medium.$3: [],
    AppCategories.big.$3: [],
    AppCategories.mahabig.$3: [],
    AppCategories.bg.$3: [],
    AppCategories.sb.$3: [],
    AppCategories.cc.$3: [],
    AppCategories.pl.$3: [],
    AppCategories.set.$3: [],
    AppCategories.culinary.$3: [],
    AppCategories.other.$3: [],
  };

  CategoryBloc({
    required this.booksByName,
    required this.setBooks,
    required this.booksBySize,
    required this.allBooks,
    required this.culinaryBooks,
    required this.otherBooks,
    required this.searchBooks,
  }) : super(const CategoryBooksEmpty()) {
    on<FetchCategoryBooksEvent>(_onFetchCategoryBooks, transformer: droppable());
  }

  FutureOr<void> _onFetchCategoryBooks(
    FetchCategoryBooksEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(CategoryBooksLoading(map: state.map));

    if (event.param == AppCategories.small.$3) {
      if (_map[AppCategories.small.$3]!.isNotEmpty && !event.isFirstFetch) {
        emit(CategoryBooksLoaded(books: state.map?[AppCategories.small.$3] ?? [], map: state.map));
      } else {
        final failureOrBooks = await booksBySize(BookSizeParams(size: event.param));
        failureOrBooks.fold(
          (failure) =>
              emit(CategoryBooksError(message: mapFailureToMessage(failure), map: state.map)),
          (books) {
            _map[AppCategories.small.$3] = books;
            emit(CategoryBooksLoaded(books: books, map: _map));
          },
        );
      }
    } else if (event.param == AppCategories.medium.$3) {
      if (_map[AppCategories.medium.$3]!.isNotEmpty && !event.isFirstFetch) {
        emit(CategoryBooksLoaded(books: state.map?[AppCategories.medium.$3] ?? [], map: state.map));
      } else {
        final failureOrBooks = await booksBySize(BookSizeParams(size: event.param));
        failureOrBooks.fold(
          (failure) =>
              emit(CategoryBooksError(message: mapFailureToMessage(failure), map: state.map)),
          (books) {
            _map[AppCategories.medium.$3] = books;
            emit(CategoryBooksLoaded(books: books, map: _map));
          },
        );
      }
    } else if (event.param == AppCategories.big.$3) {
      if (_map[AppCategories.big.$3]!.isNotEmpty && !event.isFirstFetch) {
        emit(CategoryBooksLoaded(books: state.map?[AppCategories.big.$3] ?? [], map: state.map));
      } else {
        final failureOrBooks = await booksBySize(BookSizeParams(size: event.param));
        failureOrBooks.fold(
          (failure) =>
              emit(CategoryBooksError(message: mapFailureToMessage(failure), map: state.map)),
          (books) {
            _map[AppCategories.big.$3] = books;
            emit(CategoryBooksLoaded(books: books, map: _map));
          },
        );
      }
    } else if (event.param == AppCategories.mahabig.$3) {
      if (_map[AppCategories.mahabig.$3]!.isNotEmpty && !event.isFirstFetch) {
        emit(
            CategoryBooksLoaded(books: state.map?[AppCategories.mahabig.$3] ?? [], map: state.map));
      } else {
        final failureOrBooks = await booksBySize(BookSizeParams(size: event.param));
        failureOrBooks.fold(
          (failure) =>
              emit(CategoryBooksError(message: mapFailureToMessage(failure), map: state.map)),
          (books) {
            _map[AppCategories.mahabig.$3] = books;
            emit(CategoryBooksLoaded(books: books, map: _map));
          },
        );
      }
    } else if (event.param == AppCategories.bg.$3) {
      if (_map[AppCategories.bg.$3]!.isNotEmpty && !event.isFirstFetch) {
        emit(CategoryBooksLoaded(books: state.map?[AppCategories.bg.$3] ?? [], map: state.map));
      } else {
        final failureOrBooks = await booksByName(BookNameParams(name: event.param));
        failureOrBooks.fold(
          (failure) =>
              emit(CategoryBooksError(message: mapFailureToMessage(failure), map: state.map)),
          (books) {
            _map[AppCategories.bg.$3] = books;
            emit(CategoryBooksLoaded(books: books, map: _map));
          },
        );
      }
    } else if (event.param == AppCategories.sb.$3) {
      if (_map[AppCategories.sb.$3]!.isNotEmpty && !event.isFirstFetch) {
        emit(CategoryBooksLoaded(books: state.map?[AppCategories.sb.$3] ?? [], map: state.map));
      } else {
        final failureOrBooks = await booksByName(BookNameParams(name: event.param));
        failureOrBooks.fold(
          (failure) =>
              emit(CategoryBooksError(message: mapFailureToMessage(failure), map: state.map)),
          (books) {
            _map[AppCategories.sb.$3] = books;
            emit(CategoryBooksLoaded(books: books, map: _map));
          },
        );
      }
    } else if (event.param == AppCategories.cc.$3) {
      if (_map[AppCategories.cc.$3]!.isNotEmpty && !event.isFirstFetch) {
        emit(CategoryBooksLoaded(books: state.map?[AppCategories.cc.$3] ?? [], map: state.map));
      } else {
        final failureOrBooks = await booksByName(BookNameParams(name: event.param));
        failureOrBooks.fold(
          (failure) =>
              emit(CategoryBooksError(message: mapFailureToMessage(failure), map: state.map)),
          (books) {
            _map[AppCategories.cc.$3] = books;
            emit(CategoryBooksLoaded(books: books, map: _map));
          },
        );
      }
    } else if (event.param == AppCategories.pl.$3) {
      if (_map[AppCategories.pl.$3]!.isNotEmpty && !event.isFirstFetch) {
        emit(CategoryBooksLoaded(books: state.map?[AppCategories.pl.$3] ?? [], map: state.map));
      } else {
        final failureOrBooks = await booksByName(BookNameParams(name: event.param));
        failureOrBooks.fold(
          (failure) =>
              emit(CategoryBooksError(message: mapFailureToMessage(failure), map: state.map)),
          (books) {
            _map[AppCategories.pl.$3] = books;
            emit(CategoryBooksLoaded(books: books, map: _map));
          },
        );
      }
    } else if (event.param == AppCategories.set.$3) {
      if (_map[AppCategories.set.$3]!.isNotEmpty && !event.isFirstFetch) {
        emit(CategoryBooksLoaded(books: state.map?[AppCategories.set.$3] ?? [], map: state.map));
      } else {
        final failureOrBooks = await setBooks(BookSetParams(singleOrSet: event.param));
        failureOrBooks.fold(
          (failure) =>
              emit(CategoryBooksError(message: mapFailureToMessage(failure), map: state.map)),
          (books) {
            _map[AppCategories.set.$3] = books;
            emit(CategoryBooksLoaded(books: books, map: _map));
          },
        );
      }
    } else if (event.param == AppCategories.culinary.$3) {
      if (_map[AppCategories.culinary.$3]!.isNotEmpty && !event.isFirstFetch) {
        emit(CategoryBooksLoaded(
            books: state.map?[AppCategories.culinary.$3] ?? [], map: state.map));
      } else {
        final failureOrBooks = await culinaryBooks();
        failureOrBooks.fold(
          (failure) =>
              emit(CategoryBooksError(message: mapFailureToMessage(failure), map: state.map)),
          (books) {
            _map[AppCategories.culinary.$3] = books;
            emit(CategoryBooksLoaded(books: books, map: _map));
          },
        );
      }
    } else if (event.param == AppCategories.other.$3) {
      if (_map[AppCategories.other.$3]!.isNotEmpty && !event.isFirstFetch) {
        emit(CategoryBooksLoaded(books: state.map?[AppCategories.other.$3] ?? [], map: state.map));
      } else {
        final failureOrBooks = await otherBooks();
        failureOrBooks.fold(
          (failure) =>
              emit(CategoryBooksError(message: mapFailureToMessage(failure), map: state.map)),
          (books) {
            _map[AppCategories.other.$3] = books;
            emit(CategoryBooksLoaded(books: books, map: _map));
          },
        );
      }
    } else if (event.param == AppCategories.all.$3) {
      if (_map[AppCategories.all.$3]!.isNotEmpty && !event.isFirstFetch) {
        emit(CategoryBooksLoaded(books: state.map?[AppCategories.all.$3] ?? [], map: state.map));
      } else {
        final failureOrBooks = await allBooks();
        failureOrBooks.fold(
          (failure) =>
              emit(CategoryBooksError(message: mapFailureToMessage(failure), map: state.map)),
          (books) {
            _map[AppCategories.all.$3] = books;
            emit(CategoryBooksLoaded(books: books, map: _map));
          },
        );
      }
    }
  }
}
