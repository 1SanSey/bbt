import 'package:bbt/common/failure_to_message.dart';
import 'package:bbt/features/domain/repositories/i_user_repository.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_display_name_bloc.freezed.dart';

@freezed
class UpdateDisplayNameEvent with _$UpdateDisplayNameEvent {
  const UpdateDisplayNameEvent._();
  const factory UpdateDisplayNameEvent.update({required String id, required String newName}) =
      _UpdateEvent;
}

@freezed
class UpdateDisplayNameState with _$UpdateDisplayNameState {
  const UpdateDisplayNameState._();
  const factory UpdateDisplayNameState.empty() = _EmptyState;
  const factory UpdateDisplayNameState.updating() = _UpdatingState;
  const factory UpdateDisplayNameState.updated() = _UpdatedState;
  const factory UpdateDisplayNameState.error({
    @Default('Произошла ошибка при обновлении имени пользователя') String message,
  }) = _ErrorState;
}

class UpdateDisplayNameBloc extends Bloc<UpdateDisplayNameEvent, UpdateDisplayNameState> {
  final IUserRepository repo;

  UpdateDisplayNameBloc({required this.repo}) : super(const UpdateDisplayNameState.empty()) {
    on<UpdateDisplayNameEvent>(
      _update,
      transformer: bloc_concurrency.droppable(),
    );
  }

  Future<void> _update(
    UpdateDisplayNameEvent event,
    Emitter<UpdateDisplayNameState> emitter,
  ) async {
    emitter(const UpdateDisplayNameState.updating());
    final failureOrUser = await repo.updateDisplayName(event.id, event.newName);

    failureOrUser.fold(
      (failure) => emitter(UpdateDisplayNameState.error(message: mapFailureToMessage(failure))),
      (user) {
        emitter(const UpdateDisplayNameState.updated());
      },
    );
  }
}
