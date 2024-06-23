part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}

class CategoryLoadAllBooksEvent extends CategoryEvent {
  final String param;
  final int index;

  const CategoryLoadAllBooksEvent({this.index = 0, required this.param});
}

class CategoryLoadBooksBySizeEvent extends CategoryEvent {
  final String param;
  final int index;

  const CategoryLoadBooksBySizeEvent({this.index = 0, required this.param});
}

class CategoryLoadBooksByNameEvent extends CategoryEvent {
  final String param;
  final int index;

  const CategoryLoadBooksByNameEvent({this.index = 0, required this.param});
}

class CategoryLoadBooksSetEvent extends CategoryEvent {
  final String param;
  final int index;

  const CategoryLoadBooksSetEvent({this.index = 0, required this.param});
}

class CategoryLoadCulinaryBooksEvent extends CategoryEvent {
  final String param;
  final int index;

  const CategoryLoadCulinaryBooksEvent({this.index = 0, required this.param});
}

class CategorySearchBooksEvent extends CategoryEvent {
  final String query;

  const CategorySearchBooksEvent({required this.query});

  @override
  List<Object> get props => [query];
}
