part of 'book_detail_bloc.dart';

abstract class BookDetailEvent extends Equatable {
  const BookDetailEvent();

  @override
  List<Object?> get props => [];
}

class FetchBookDetailEvent extends BookDetailEvent {
  final int id;

  const FetchBookDetailEvent({required this.id});
}
