import 'package:bbt/core/error/exception.dart';
import 'package:bbt/core/error/failure.dart';
import 'package:bbt/core/platform/network_info.dart';
import 'package:bbt/features/data/i_datasources/i_books_remote_datasource.dart';
import 'package:bbt/features/data/models/book_model.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/domain/repositories/i_categories_repository.dart';
import 'package:dartz/dartz.dart';

class CategoriesRepositoryImpl implements ICategoriesRepository {
  final IBooksRemoteDatasource remoteDataSource;
  final NetworkInfo networkInfo;

  CategoriesRepositoryImpl({
    required this.networkInfo,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<BookEntity>>> getAllBooks() {
    return _getBooks(remoteDataSource.getAllBooks);
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getCulinaryBooks() {
    return _getBooks(remoteDataSource.getCulinaryBooks);
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getBooksByName(String name) {
    return _getBooks(() {
      return remoteDataSource.getBooksByName(name);
    });
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getBooksBySize(String size) {
    return _getBooks(() {
      return remoteDataSource.getBooksBySize(size);
    });
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getSetBooks(String singleOrSet) {
    return _getBooks(() {
      return remoteDataSource.getSetBooks(singleOrSet);
    });
  }

  Future<Either<Failure, List<BookModel>>> _getBooks(
    Future<List<BookModel>> Function() getBooks,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteBooks = await getBooks();

        return Right(remoteBooks);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(InternetConnectionFailure());
    }
  }
}
