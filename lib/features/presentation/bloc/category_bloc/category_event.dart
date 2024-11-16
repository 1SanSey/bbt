part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}

class FetchCategoryBooksEvent extends CategoryEvent {
  final String param;
  final bool isFirstFetch;

  const FetchCategoryBooksEvent({required this.param, this.isFirstFetch = false});
}
