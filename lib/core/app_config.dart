import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static final AppConfig _singleton = AppConfig._();

  factory AppConfig() {
    return _singleton;
  }

  AppConfig._();

  static String get keyApplicationId => dotenv.env['KEY_APPLICATION_ID'] ?? '';
  static String get apiUri => dotenv.env['API_URI'] ?? '';
  static String get keyClient => dotenv.env['KEY_CLIENT'] ?? '';
  static String get emailAdmin => dotenv.env['EMAIL_ADMIN'] ?? '';
  static String get telegramUri => dotenv.env['TELEGRAM_URI'] ?? '';
  static String get telegramToken => dotenv.env['TELEGRAM_TOKEN'] ?? '';
  static String get chatId => dotenv.env['CHAT_ID'] ?? '';

  static Future<void> load() async {
    await dotenv.load(fileName: 'assets/env');
  }
}
