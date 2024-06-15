import 'package:bbt/core/error/failure.dart';
import 'package:bbt/features/domain/entities/user_entity/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class IUserRepository {
  Future<Either<Failure, UserEntity>> getUser(String id);
  Future<Either<Failure, void>> updateDisplayName(String id, String newName);
  Future<Either<Failure, void>> updatePassword(String id, String newPassword);
}
