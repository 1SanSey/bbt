import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart' as sembast_io;
import 'package:sembast_web/sembast_web.dart';

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
    try {
      if (kIsWeb) {
        await _openWebDatabase();
      } else {
        await _openMobileDatabase();
      }
    } catch (e) {
      throw Exception('Unsupported platform for database creation $e');
    }
  }

  Future<void> _openMobileDatabase() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    final dbPath = join(appDocumentDir.path, 'books.db');
    final database = await sembast_io.databaseFactoryIo.openDatabase(dbPath);
    _dbCompleter!.complete(database);
  }

  Future<void> _openWebDatabase() async {
    const dbName = 'books_web.db';
    final database = await databaseFactoryWeb.openDatabase(dbName);
    _dbCompleter!.complete(database);
  }
}
