import 'dart:async';

import 'package:bbt/features/domain/entities/order_entity.dart';
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

    on<OpenOrderDetail>(
      _changeOrderDetailVisibility,
      transformer: bloc_concurrency.droppable(),
    );
  }

  FutureOr<void> _changeProfileVisibility(
    OpenProfile event,
    Emitter<SidebarVisibilityState> emit,
  ) async {
    emit(ProfileVisibilityState(isActive: event.isActive));
  }

  FutureOr<void> _changeOrderDetailVisibility(
    OpenOrderDetail event,
    Emitter<SidebarVisibilityState> emit,
  ) async {
    emit(OrderDetailVisibilityState(event.isActive, event.order));
  }
}

sealed class SidebarVisibilityEvent {}

class OpenProfile extends SidebarVisibilityEvent {
  final bool isActive;

  OpenProfile(this.isActive);
}

class OpenOrderDetail extends SidebarVisibilityEvent {
  final bool isActive;
  final OrderEntity? order;

  OpenOrderDetail(this.isActive, {this.order});
}

sealed class SidebarVisibilityState extends Equatable {}

class ProfileVisibilityState extends SidebarVisibilityState {
  final bool isActive;

  ProfileVisibilityState({required this.isActive});

  @override
  List<Object?> get props => [isActive];
}

class OrderDetailVisibilityState extends SidebarVisibilityState {
  final bool isActive;
  final OrderEntity? order;

  OrderDetailVisibilityState(this.isActive, this.order);

  @override
  List<Object?> get props => [isActive, order];
}
