import 'package:bbt/core/error/exception.dart';
import 'package:bbt/core/logger/logger_service.dart';
import 'package:bbt/features/data/i_datasources/i_books_remote_datasource.dart';
import 'package:bbt/features/data/models/book_model.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class BooksRemoteDatasourceImpl extends IBooksRemoteDatasource {
  @override
  Future<List<BookModel>> fetchAllBooks({int limit = 200}) async {
    final books = <BookModel>[];
    // final apiResponse = await ParseObject('Books').getAll();
   final QueryBuilder<ParseObject> query = QueryBuilder<ParseObject>(ParseObject('Books'))
      ..setLimit(limit);

    final apiResponse = await query.query();
    if (apiResponse.success && apiResponse.results != null) {
      for (final object in apiResponse.results as List<ParseObject>) {
        books.add(BookModel.fromDb(object));
      }
    } else {
      throw ServerException(error: apiResponse.error?.message);
    }

    logw('BooksRemoteDatasourceImpl ${books.length}');

    return books;
  }

  @override
  Future<List<BookModel>> fetchBooksByName(String name, {String field = 'name'}) async {
    final books = <BookModel>[];
    final QueryBuilder<ParseObject> parseQuery = QueryBuilder<ParseObject>(ParseObject('Books'))
      ..whereContains(field, name);
    final apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (final object in apiResponse.results as List<ParseObject>) {
        books.add(BookModel.fromDb(object));
      }
    } else {
      throw ServerException(error: apiResponse.error?.message);
    }

    return books;
  }

  @override
  Future<List<BookModel>> fetchPopularBooks() async {
    return fetchBooksByName(field: 'extraCategory', 'popular');
  }

  @override
  Future<List<BookModel>> fetchCulinaryBooks() async {
    return fetchBooksByName(field: 'extraCategory', 'culinary');
  }

  @override
  Future<List<BookModel>> fetchOtherBooks() {
    return fetchBooksByName(field: 'extraCategory', 'other');
  }

  @override
  Future<List<BookModel>> fetchBooksBySize(String size) async {
    return _getBooksByQuery('size', size);
  }

  @override
  Future<List<BookModel>> fetchSetBooks(String singleOrSet) async {
    return _getBooksByQuery('singleOrSet', singleOrSet);
  }

  Future<List<BookModel>> _getBooksByQuery(String field, var query) async {
    final List<BookModel> books = [];
    final QueryBuilder<ParseObject> parseQuery = QueryBuilder<ParseObject>(ParseObject('Books'))
      ..whereEqualTo(field, query);
    final apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (final object in apiResponse.results as List<ParseObject>) {
        books.add(BookModel.fromDb(object));
      }
    } else {
      throw ServerException(error: apiResponse.error?.message);
    }

    return books;
  }

  @override
  Future<BookModel> fetchBookDetail(int id) async {
    BookModel? book;
    final QueryBuilder<ParseObject> parseQuery = QueryBuilder<ParseObject>(ParseObject('Books'))
      ..whereEqualTo('idBook', id);
    final apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      book = BookModel.fromDb((apiResponse.results as List<ParseObject>).first);
    } else {
      throw ServerException(error: apiResponse.error?.message);
    }

    return book;
  }
}
