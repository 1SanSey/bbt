import 'package:bbt/core/app_config.dart';
import 'package:bbt/core/hive_names.dart';
import 'package:bbt/features/data/models/cart_book_model/cart_book_model.dart';
import 'package:bbt/features/data/models/favourites_book_model/favourites_book_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class InitDatasources {
  InitDatasources._();

  static final instance = InitDatasources._();

  Future<void> initParse() async {
    await Parse().initialize(
      AppConfig.keyApplicationId,
      AppConfig.apiUri,
      clientKey: AppConfig.keyClient,
      autoSendSessionId: true,
    );
  }

  Future<void> initHive() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(CartBookModelAdapter())
      ..registerAdapter(FavouritesBookModelAdapter());
    await Hive.openBox<CartBookModel>(HiveBoxes.cart);
    await Hive.openBox<FavouritesBookModel>(HiveBoxes.favourites);
  }
}
