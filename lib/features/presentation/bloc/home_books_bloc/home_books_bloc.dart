import 'dart:async';

import 'package:bbt/common/failure_to_message.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/domain/usecases/popular_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_books_event.dart';
part 'home_books_state.dart';

class HomeBooksBloc extends Bloc<HomeBooksEvent, HomeBooksState> {
  final PopularUsecase popularBooks;

  HomeBooksBloc({required this.popularBooks}) : super(const HomeBooksEmpty()) {
    on<HomeLoadBooksEvent>(_onEvent);
    on<HomeBooksEmptyEvent>(_onEmptyEvent);
  }

  FutureOr<void> _onEvent(
    HomeLoadBooksEvent event,
    Emitter<HomeBooksState> emit,
  ) async {
    emit(HomeBooksLoading(books: state.books));

    final failureOrBooks = await popularBooks();

    failureOrBooks.fold(
      (failure) => emit(HomeBooksError(message: mapFailureToMessage(failure))),
      (books) {
        emit(HomeBooksLoaded(books: books));
      },
    );
  }

  FutureOr<void> _onEmptyEvent(HomeBooksEmptyEvent event, Emitter<HomeBooksState> emit) {
    emit(const HomeBooksEmpty());
  }
}
