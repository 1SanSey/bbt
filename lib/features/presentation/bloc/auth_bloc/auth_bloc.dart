import 'package:bbt/common/failure_to_message.dart';
import 'package:bbt/features/domain/entities/user_entity/user_entity.dart';
import 'package:bbt/features/domain/repositories/i_auth_repository.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'auth_bloc.freezed.dart';
part 'auth_bloc.g.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.logIn({
    required String login,
    required String password,
  }) = _LogInAuthEvent;
  const factory AuthEvent.logOut() = _LogOutAuthEvent;
  const factory AuthEvent.updateName(String newName) = _UpdateNameAuthEvent;
  const factory AuthEvent.updatePhoto(String newPhoto) = _UpdatePhotoAuthEvent;
}

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  bool get isAuthenticated => maybeMap<bool>(
        orElse: () => false,
        authenticated: (_) => true,
      );

  bool get inProgress => maybeMap<bool>(
        orElse: () => true,
        notAuthenticated: (_) => false,
        authenticated: (_) => false,
      );

  @override
  UserEntity get user => when<UserEntity>(
        authenticated: (user) => user,
        inProcess: (user) => user,
        notAuthenticated: (user) => user,
        successful: (user) => user,
        error: (user, _) => user,
      );

  const factory AuthState.authenticated({
    required UserEntity user,
  }) = _AuthenticatedAuthState;

  const factory AuthState.inProcess({
    required UserEntity user,
  }) = _InProcessAuthState;

  const factory AuthState.notAuthenticated({
    required UserEntity user,
  }) = _NotAuthenticatedAuthState;

  const factory AuthState.error({
    required UserEntity user,
    @Default('Произошла ошибка') String message,
  }) = _ErrorAuthState;

  const factory AuthState.successful({
    required UserEntity user,
  }) = _SuccessfulAuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);
}

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  final IAuthRepository _repository;

  AuthBloc({
    required IAuthRepository repository,
  })  : _repository = repository,
        super(
          AuthState.notAuthenticated(user: UserEntity.empty()),
          // userEntity?.when<AuthState>(
          //       authenticated: (user) => AuthState.authenticated(user: user),
          //       notAuthenticated: () => const AuthState.notAuthenticated(),
          //     ) ??
          //     const AuthState.notAuthenticated(),
        ) {
    on<AuthEvent>(
      (event, emitter) => event.map<Future<void>>(
        logIn: (event) => _logIn(event, emitter),
        logOut: (event) => _logOut(event, emitter),
        updateName: (event) => _updateName(event, emitter),
        updatePhoto: (event) => _updatePhoto(event, emitter),
      ),
      transformer: bloc_concurrency.droppable(),
    );
  }

  // @override
  // AuthState? fromJson(Map<String, dynamic> json) {
  //   // TODO: implement fromJson
  //   throw UnimplementedError();
  // }

  // @override
  // Map<String, dynamic>? toJson(AuthState state) {
  //   // TODO: implement toJson
  //   throw UnimplementedError();
  // }

  Future<void> _logIn(_LogInAuthEvent event, Emitter<AuthState> emitter) async {
    try {
      emitter(AuthState.inProcess(user: UserEntity.empty()));
      final newUser = await _repository.login(login: event.login, password: event.password);

      newUser.fold(
        (failure) => emitter(
          AuthState.error(user: UserEntity.empty(), message: mapFailureToMessage(failure)),
        ),
        (user) {
          emitter(AuthState.successful(user: user));
        },
      );
    } on FormatException {
      emitter(AuthState.error(
        user: UserEntity.empty(),
        message: 'Нельзя залогиниться - нет интернета',
      ));
    } on Object {
      emitter(AuthState.error(user: UserEntity.empty(), message: 'Ошибка аутентификации'));
      // без rethrow будет замалчивание ошибок
      rethrow;
    } finally {
      emitter(
        state.maybeMap(
          successful: (state) => AuthState.authenticated(user: state.user),
          orElse: () => AuthState.notAuthenticated(user: UserEntity.empty()),
        ),
      );
    }
  }

  Future<void> _logOut(_, Emitter<AuthState> emitter) async {
    try {
      emitter(AuthState.inProcess(user: state.user));
      final notAuthenticatedUser = await _repository.logout();
      notAuthenticatedUser.fold(
        (failure) => emitter(
          AuthState.error(user: UserEntity.empty(), message: mapFailureToMessage(failure)),
        ),
        (notAuthenticatedUser) {
          emitter(AuthState.successful(user: notAuthenticatedUser));
        },
      );
    } on FormatException {
      emitter(AuthState.error(user: state.user, message: 'Нельзя залогиниться - нет интернета'));
    } on Object {
      emitter(AuthState.error(user: state.user, message: 'Ошибка аутентификации'));
      rethrow;
    } finally {
      emitter(
        state.maybeMap<AuthState>(
          successful: (state) => AuthState.notAuthenticated(user: UserEntity.empty()),
          orElse: () => AuthState.authenticated(user: state.user),
        ),
      );
    }
  }

  Future<void> _updateName(_UpdateNameAuthEvent event, Emitter<AuthState> emitter) async {
    emitter(AuthState.inProcess(user: state.user));
    emitter(AuthState.authenticated(user: state.user.copyWith(displayName: event.newName)));
  }

  Future<void> _updatePhoto(_UpdatePhotoAuthEvent event, Emitter<AuthState> emitter) async {
    emitter(AuthState.inProcess(user: state.user));
    emitter(AuthState.authenticated(user: state.user.copyWith(photoURL: event.newPhoto)));
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    final state = AuthState.fromJson(json);

    return state.maybeMap(
      authenticated: (state) => AuthState.authenticated(user: state.user),
      orElse: () => AuthState.notAuthenticated(user: UserEntity.empty()),
    );
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.toJson();
  }
}
