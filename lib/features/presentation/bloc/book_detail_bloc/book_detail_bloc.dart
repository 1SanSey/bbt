import 'dart:async';

import 'package:bbt/common/failure_to_message.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/domain/repositories/i_book_detail_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'book_detail_event.dart';
part 'book_detail_state.dart';

class BookDetailBloc extends Bloc<BookDetailEvent, BookDetailState> {
  final IBookDetailRepository repository;

  BookDetailBloc({required this.repository}) : super(const BookDetailEmpty()) {
    on<FetchBookDetailEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    FetchBookDetailEvent event,
    Emitter<BookDetailState> emit,
  ) async {
    emit(BookDetailLoading(book: state.book));

    final failureOrBooks = await repository.fetchBookDetail(event.id);

    failureOrBooks.fold(
      (failure) => emit(BookDetailError(message: mapFailureToMessage(failure))),
      (book) {
        emit(BookDetailLoaded(book: book));
      },
    );
  }
}
