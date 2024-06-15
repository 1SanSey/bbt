import 'package:bbt/core/error/exception.dart';
import 'package:bbt/core/error/failure.dart';
import 'package:bbt/core/platform/network_info.dart';
import 'package:bbt/features/data/i_datasources/i_books_remote_datasource.dart';
import 'package:bbt/features/data/models/book_model.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/domain/repositories/i_books_home_repository.dart';
import 'package:dartz/dartz.dart';

class BooksHomeRepositoryImpl implements IBooksHomeRepository {
  final IBooksRemoteDatasource remoteDataSource;
  final NetworkInfo networkInfo;

  BooksHomeRepositoryImpl({
    required this.networkInfo,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<BookEntity>>> getPopularBooks() async {
    return _getBooks(remoteDataSource.getPopularBooks);
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
