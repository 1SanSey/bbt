import 'package:bbt/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type> {
  // Type тип возврата без ошибок, PersonEntity
  // Params вызовет незначительные изменения кода в существующих UseCases
  Future<Either<Failure, Type>> call();
}

abstract class UseCaseByParams<Type, Params> {
  // Type тип возврата без ошибок, PersonEntity
  // Params вызовет незначительные изменения кода в существующих UseCases
  Future<Either<Failure, Type>> call(Params params);
}
