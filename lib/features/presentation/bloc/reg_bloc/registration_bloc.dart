import 'package:bbt/common/failure_to_message.dart';
import 'package:bbt/features/domain/repositories/i_auth_repository.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_bloc.freezed.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const RegistrationEvent._();

  const factory RegistrationEvent.register({
    required String login,
    required String password,
    required String userName,
  }) = _RegistrationEvent;
  const factory RegistrationEvent.toInitial() = _ToInitialRegistrationEvent;
}

@freezed
class RegistrationState with _$RegistrationState {
  const RegistrationState._();

  const factory RegistrationState.initial() = _InitialRegistrationState;

  const factory RegistrationState.inProcess() = _InProcessRegistrationState;

  const factory RegistrationState.successful() = _SuccessfulRegistrationState;

  const factory RegistrationState.error({
    @Default('Произошла ошибка') String message,
  }) = _ErrorRegistrationState;
}

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final IAuthRepository _repository;
  RegistrationBloc(
    this._repository,
  ) : super(
          const RegistrationState.initial(),
        ) {
    on<RegistrationEvent>(
      (event, emitter) => event.map(
        register: (event) => _onRegister(event, emitter),
        toInitial: (event) => _onToInitial(event, emitter),
      ),
      transformer: bloc_concurrency.droppable(),
    );
  }

  Future<void> _onRegister(_RegistrationEvent event, Emitter<RegistrationState> emitter) async {
    try {
      emitter(const RegistrationState.inProcess());
      final registerUser = await _repository.register(
        login: event.login,
        userName: event.userName,
        password: event.password,
      );

      registerUser.fold(
        (failure) => emitter(RegistrationState.error(message: mapFailureToMessage(failure))),
        (user) {
          emitter(const RegistrationState.successful());
        },
      );
    } on FormatException {
      emitter(const RegistrationState.error(message: 'Нельзя залогиниться - нет интернета'));
    } on Object {
      emitter(const RegistrationState.error(message: 'Ошибка регистрации'));
      rethrow;
    }
  }

  void _onToInitial(_ToInitialRegistrationEvent _, Emitter<RegistrationState> emitter) {
    emitter(const RegistrationState.initial());
  }
}
