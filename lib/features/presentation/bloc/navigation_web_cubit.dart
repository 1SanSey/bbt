import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationWebState extends Equatable {
  final int index;
  final BookEntity? book;

  const NavigationWebState(this.index, {this.book});

  @override
  List<Object?> get props => [index, book];
}

class NavigationWebCubit extends Cubit<NavigationWebState> {
  NavigationWebCubit() : super(const NavigationWebState(0));

  void changePage(int index, {BookEntity? book}) {
    emit(NavigationWebState(index, book: book));
  }
}
