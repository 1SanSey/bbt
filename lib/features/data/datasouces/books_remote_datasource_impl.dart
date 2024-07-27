import 'package:bbt/core/error/exception.dart';
import 'package:bbt/features/data/i_datasources/i_books_remote_datasource.dart';
import 'package:bbt/features/data/models/book_model.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class BooksRemoteDatasourceImpl extends IBooksRemoteDatasource {
  @override
  Future<List<BookModel>> getAllBooks() async {
    final books = <BookModel>[];
    final apiResponse = await ParseObject('Books').getAll();
    if (apiResponse.success && apiResponse.results != null) {
      for (final object in apiResponse.results as List<ParseObject>) {
        books.add(BookModel.fromDb(object));
      }
    } else {
      throw ServerException();
    }

    return books;
  }

  @override
  Future<List<BookModel>> getBooksByName(String name, {String field = 'name'}) async {
    final books = <BookModel>[];
    final QueryBuilder<ParseObject> parseQuery = QueryBuilder<ParseObject>(ParseObject('Books'))
      ..whereContains(field, name);
    final apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (final object in apiResponse.results as List<ParseObject>) {
        books.add(BookModel.fromDb(object));
      }
    } else {
      throw ServerException();
    }

    return books;
  }

  @override
  Future<List<BookModel>> getPopularBooks() async {
    return getBooksByName(field: 'extraCategory', 'popular');
  }

  @override
  Future<List<BookModel>> getCulinaryBooks() async {
    return getBooksByName(field: 'extraCategory', 'culinary');
  }

  @override
  Future<List<BookModel>> getOtherBooks() {
    return getBooksByName(field: 'extraCategory', 'other');
  }

  @override
  Future<List<BookModel>> getBooksBySize(String size) async {
    return _getBooksByQuery('size', size);
  }

  @override
  Future<List<BookModel>> getSetBooks(String singleOrSet) async {
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
      throw ServerException();
    }

    return books;
  }
}
