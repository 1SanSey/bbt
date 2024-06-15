import 'package:bbt/core/error/failure.dart';
import 'package:bbt/features/domain/entities/user_entity/user_entity.dart';
import 'package:bbt/features/domain/repositories/i_auth_repository.dart';
import 'package:bbt/features/domain/usecases/usecases.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class AuthUsecase extends UseCaseByParams<UserEntity, UserParams> {
  final IAuthRepository authRepository;

  AuthUsecase(this.authRepository);

  @override
  Future<Either<Failure, UserEntity>> call(UserParams params) async {
    return authRepository.login(
      login: params.login,
      password: params.password,
    );
  }
}

class UserParams extends Equatable {
  final String login;
  final String password;

  const UserParams({required this.login, required this.password});

  @override
  List<Object?> get props => [login, password];
}
