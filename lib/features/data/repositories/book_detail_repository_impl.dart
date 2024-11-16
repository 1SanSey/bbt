import 'package:bbt/core/error/exception.dart';
import 'package:bbt/core/error/failure.dart';
import 'package:bbt/core/platform/network_info.dart';
import 'package:bbt/features/data/i_datasources/i_books_remote_datasource.dart';
import 'package:bbt/features/data/models/book_model.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/domain/repositories/i_book_detail_repository.dart';
import 'package:dartz/dartz.dart';

class BookDetailRepositoryImpl implements IBookDetailRepository {
  final IBooksRemoteDatasource remoteDataSource;
  final NetworkInfo networkInfo;

  BookDetailRepositoryImpl({
    required this.networkInfo,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, BookEntity>> fetchBookDetail(int id) async {
    return _fetchBook(() {
      return remoteDataSource.fetchBookDetail(id);
    });
  }

  Future<Either<Failure, BookModel>> _fetchBook(
    Future<BookModel> Function() getBook,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteBooks = await getBook();

        return Right(remoteBooks);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(InternetConnectionFailure());
    }
  }
}
