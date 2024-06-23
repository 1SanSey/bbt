import 'dart:async';

import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SidebarVisibilityBloc extends Bloc<SidebarVisibilityEvent, SidebarVisibilityState> {
  SidebarVisibilityBloc() : super(ProfileVisibilityState(isActive: false)) {
    _setupEvents();
  }

  void _setupEvents() {
    on<OpenProfile>(
      _changeProfileVisibility,
      transformer: bloc_concurrency.droppable(),
    );

    on<OpenFavourites>(
      _changeFavouritesVisibility,
      transformer: bloc_concurrency.droppable(),
    );

    on<OpenCart>(
      _changeCartVisibility,
      transformer: bloc_concurrency.droppable(),
    );

    on<OpenBookDetail>(
      _changeBookDetailVisibility,
      transformer: bloc_concurrency.droppable(),
    );
  }

  FutureOr<void> _changeProfileVisibility(
    OpenProfile event,
    Emitter<SidebarVisibilityState> emit,
  ) async {
    emit(ProfileVisibilityState(isActive: event.isActive));
  }

  FutureOr<void> _changeFavouritesVisibility(
    OpenFavourites event,
    Emitter<SidebarVisibilityState> emit,
  ) async {
    emit(FavouritesVisibilityState(isActive: event.isActive));
  }

  FutureOr<void> _changeCartVisibility(
    OpenCart event,
    Emitter<SidebarVisibilityState> emit,
  ) async {
    emit(CartVisibilityState(isActive: event.isActive));
  }

  FutureOr<void> _changeBookDetailVisibility(
    OpenBookDetail event,
    Emitter<SidebarVisibilityState> emit,
  ) async {
    emit(BookDetailVisibilityState(event.isActive, event.book));
  }
}

sealed class SidebarVisibilityEvent {}

class OpenProfile extends SidebarVisibilityEvent {
  final bool isActive;

  OpenProfile(this.isActive);
}

class OpenFavourites extends SidebarVisibilityEvent {
  final bool isActive;

  OpenFavourites(this.isActive);
}

class OpenBookDetail extends SidebarVisibilityEvent {
  final bool isActive;
  final BookEntity? book;

  OpenBookDetail(this.isActive, {this.book});
}

class OpenCart extends SidebarVisibilityEvent {
  final bool isActive;

  OpenCart(this.isActive);
}

sealed class SidebarVisibilityState extends Equatable {}

class ProfileVisibilityState extends SidebarVisibilityState {
  final bool isActive;

  ProfileVisibilityState({required this.isActive});

  @override
  List<Object?> get props => [isActive];
}

class FavouritesVisibilityState extends SidebarVisibilityState {
  final bool isActive;

  FavouritesVisibilityState({required this.isActive});

  @override
  List<Object?> get props => [isActive];
}

class CartVisibilityState extends SidebarVisibilityState {
  final bool isActive;

  CartVisibilityState({required this.isActive});

  @override
  List<Object?> get props => [isActive];
}

class BookDetailVisibilityState extends SidebarVisibilityState {
  final bool isActive;
  final BookEntity? book;

  BookDetailVisibilityState(this.isActive, this.book);

  @override
  List<Object?> get props => [isActive, book];
}
