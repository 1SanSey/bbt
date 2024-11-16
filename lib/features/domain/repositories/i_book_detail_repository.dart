import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class IBookDetailRepository {
  Future<Either<Failure, BookEntity>> fetchBookDetail(int id);
}
