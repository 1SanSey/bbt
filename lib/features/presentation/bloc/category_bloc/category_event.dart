part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}

class CategoryLoadAllBooksEvent extends CategoryEvent {
  final String param;

  const CategoryLoadAllBooksEvent({required this.param});
}

class CategoryLoadBooksBySizeEvent extends CategoryEvent {
  final String param;

  const CategoryLoadBooksBySizeEvent({required this.param});
}

class CategoryLoadBooksByNameEvent extends CategoryEvent {
  final String param;

  const CategoryLoadBooksByNameEvent({required this.param});
}

class CategoryLoadBooksSetEvent extends CategoryEvent {
  final String param;

  const CategoryLoadBooksSetEvent({required this.param});
}

class CategoryLoadCulinaryBooksEvent extends CategoryEvent {
  final String param;

  const CategoryLoadCulinaryBooksEvent({required this.param});
}

class CategoryLoadOtherBooksEvent extends CategoryEvent {
  const CategoryLoadOtherBooksEvent();
}

class CategorySearchBooksEvent extends CategoryEvent {
  final String query;

  const CategorySearchBooksEvent({required this.query});

  @override
  List<Object> get props => [query];
}
