import 'dart:async';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';

class AppDatabase {
  static final AppDatabase _singleton = AppDatabase._();

  static AppDatabase get instance => _singleton;

  Completer<Database>? _dbCompleter;

  AppDatabase._();

  Future<Database> get database async {
    if (_dbCompleter == null) {
      _dbCompleter = Completer();
      await _openDatabase();
    }
    return _dbCompleter!.future;
  }

  Future<void> _openDatabase() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    final dbPath = join(appDocumentDir.path, 'books.db');
    final database = await databaseFactoryIo.openDatabase(dbPath);
    _dbCompleter!.complete(database);
  }
}
