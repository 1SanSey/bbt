import 'package:bbt/common/failure_to_message.dart';
import 'package:bbt/features/domain/entities/user_entity/user_entity.dart';
import 'package:bbt/features/domain/repositories/i_user_repository.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_bloc.freezed.dart';

@freezed
class GetUserEvent with _$GetUserEvent {
  const GetUserEvent._();
  const factory GetUserEvent.fetch(String id) = _FetchUserEvent;
}

@freezed
class GetUserState with _$GetUserState {
  const GetUserState._();
  const factory GetUserState.empty() = _EmptyUserState;
  const factory GetUserState.loading() = _LoadingUserState;
  const factory GetUserState.loaded({required UserEntity user}) = _LoadedUserState;
  const factory GetUserState.error({
    @Default('Произошла ошибка при получении пользователя') String message,
  }) = _ErrorUserState;
}

class GetUserBloc extends Bloc<GetUserEvent, GetUserState> {
  final IUserRepository repo;

  GetUserBloc({required this.repo}) : super(const GetUserState.empty()) {
    on<GetUserEvent>(
      _sendEvent,
      transformer: bloc_concurrency.droppable(),
    );
  }

  Future<void> _sendEvent(
    GetUserEvent event,
    Emitter<GetUserState> emitter,
  ) async {
    emitter(const GetUserState.loading());
    final failureOrUser = await repo.getUser(event.id);

    failureOrUser.fold(
      (failure) => emitter(GetUserState.error(message: mapFailureToMessage(failure))),
      (user) {
        emitter(GetUserState.loaded(user: user));
      },
    );
  }
}
