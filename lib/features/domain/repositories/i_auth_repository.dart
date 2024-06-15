import 'package:bbt/core/error/failure.dart';
import 'package:bbt/features/domain/entities/user_entity/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<Failure, UserEntity>> login({
    required String login,
    required String password,
  });
  Future<Either<Failure, String>> register(
      {required String login, required String password, required String userName});
  Future<Either<Failure, UserEntity>> logout();
}
