import 'package:bbt/core/logger/extensions/bloc_logs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

@sealed
class AppBlocObserver extends BlocObserver {
  static AppBlocObserver? _singleton;

  factory AppBlocObserver.instance() => _singleton ??= AppBlocObserver._();
  AppBlocObserver._();

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    BlocLogs.blocEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    BlocLogs.blocState(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    BlocLogs.blocError(bloc, error, stackTrace);
  }
}
