import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationWebState extends Equatable {
  final int index;

  const NavigationWebState(this.index);

  @override
  List<Object?> get props => [index];
}

class NavigationWebCubit extends Cubit<NavigationWebState> {
  NavigationWebCubit() : super(const NavigationWebState(0));

  void changePage(int index) {
    emit(NavigationWebState(index));
  }
}
