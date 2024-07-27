import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class ICategoriesRepository {
  Future<Either<Failure, List<BookEntity>>> getAllBooks();
  Future<Either<Failure, List<BookEntity>>> getCulinaryBooks();
  Future<Either<Failure, List<BookEntity>>> getOtherBooks();
  Future<Either<Failure, List<BookEntity>>> getBooksBySize(String size);
  Future<Either<Failure, List<BookEntity>>> getBooksByName(String name);
  Future<Either<Failure, List<BookEntity>>> getSetBooks(String name);
}
