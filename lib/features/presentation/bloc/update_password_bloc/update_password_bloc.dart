import 'package:bbt/common/failure_to_message.dart';
import 'package:bbt/features/domain/repositories/i_user_repository.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_password_bloc.freezed.dart';

@freezed
class UpdatePasswordEvent with _$UpdatePasswordEvent {
  const UpdatePasswordEvent._();
  const factory UpdatePasswordEvent.update({required String id, required String password}) =
      _UpdatePassEvent;
}

@freezed
class UpdatePasswordState with _$UpdatePasswordState {
  const UpdatePasswordState._();
  const factory UpdatePasswordState.empty() = _EmptyPassState;
  const factory UpdatePasswordState.updating() = _UpdatingPassState;
  const factory UpdatePasswordState.updated() = _UpdatedPassState;
  const factory UpdatePasswordState.error({
    @Default('Произошла ошибка при обновлении пароля') String message,
  }) = _ErrorPassState;
}

class UpdatePasswordBloc extends Bloc<UpdatePasswordEvent, UpdatePasswordState> {
  final IUserRepository repo;

  UpdatePasswordBloc({required this.repo}) : super(const UpdatePasswordState.empty()) {
    on<UpdatePasswordEvent>(
      _update,
      transformer: bloc_concurrency.droppable(),
    );
  }

  Future<void> _update(
    UpdatePasswordEvent event,
    Emitter<UpdatePasswordState> emitter,
  ) async {
    emitter(const UpdatePasswordState.updating());
    final failureOrUser = await repo.updatePassword(event.id, event.password);

    failureOrUser.fold(
      (failure) => emitter(UpdatePasswordState.error(message: mapFailureToMessage(failure))),
      (user) {
        emitter(const UpdatePasswordState.updated());
      },
    );
  }
}
