import 'package:bbt/core/error/exception.dart';
import 'package:bbt/core/error/failure.dart';
import 'package:bbt/core/platform/network_info.dart';
import 'package:bbt/features/data/i_datasources/i_user_remote_datasorce.dart';
import 'package:bbt/features/domain/entities/user_entity/user_entity.dart';
import 'package:bbt/features/domain/repositories/i_user_repository.dart';
import 'package:dartz/dartz.dart';

class UserRepositoryImpl implements IUserRepository {
  final IUserRemoteDatasource remoteDataSource;
  final NetworkInfo networkInfo;

  UserRepositoryImpl({required this.networkInfo, required this.remoteDataSource});

  @override
  Future<Either<Failure, UserEntity>> getUser(String id) async {
    if (await networkInfo.isConnected) {
      try {
        final user = await remoteDataSource.getUser(id);

        return Right(user);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(InternetConnectionFailure());
    }
  }
  
  @override
  Future<Either<Failure, void>> updateDisplayName(String id, String newName) async {
    if (await networkInfo.isConnected) {
      try {
      final res =  await remoteDataSource.updateDisplayName(id, newName);

        return Right(res);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(InternetConnectionFailure());
    }
  }
  
  @override
  Future<Either<Failure, void>> updatePassword(String id, String newPassword) async{
    if (await networkInfo.isConnected) {
      try {
      final res =  await remoteDataSource.updatePassword(id, newPassword);

        return Right(res);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(InternetConnectionFailure());
    }
  }
}
