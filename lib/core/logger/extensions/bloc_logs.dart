import 'package:bbt/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class BlocLogs {
  static void blocEvent(Bloc bloc, Object? event) => sl<Logger>().d('[${bloc.runtimeType}] $event');

  static void blocState(Bloc bloc, Transition transition) => sl<Logger>().d(
        '[${bloc.runtimeType}]\nEvent: ${transition.event.runtimeType}\n${transition.currentState.runtimeType} -> ${transition.nextState.runtimeType}',
      );

  static void blocError(BlocBase bloc, Object error, StackTrace stackTrace) =>
      sl<Logger>().e('Bloc Error: ${bloc.runtimeType}\nError: $error\n$stackTrace');

  static void blocIllegalEvent(Object prevState, Object event) =>
      sl<Logger>().e('Illegal prevState (${prevState.runtimeType}) for event ${event.runtimeType}');
}
