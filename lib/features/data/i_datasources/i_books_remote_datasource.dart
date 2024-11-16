import 'package:bbt/features/data/models/book_model.dart';

abstract class IBooksRemoteDatasource {
  Future<List<BookModel>> fetchAllBooks();
  Future<List<BookModel>> fetchPopularBooks();
  Future<List<BookModel>> fetchCulinaryBooks();
  Future<List<BookModel>> fetchOtherBooks();
  Future<List<BookModel>> fetchBooksByName(String name);
  Future<List<BookModel>> fetchBooksBySize(String size);
  Future<List<BookModel>> fetchSetBooks(String singleOrSet);
  Future<BookModel> fetchBookDetail(int id);
}
