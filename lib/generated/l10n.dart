// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `BBT Kirov App`
  String get BBTKirovApp {
    return Intl.message(
      'BBT Kirov App',
      name: 'BBTKirovApp',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Возникла ошибка при авторизации.`
  String get authError {
    return Intl.message(
      'Возникла ошибка при авторизации.',
      name: 'authError',
      desc: '',
      args: [],
    );
  }

  /// `Возникла ошибка при регистрации.`
  String get regError {
    return Intl.message(
      'Возникла ошибка при регистрации.',
      name: 'regError',
      desc: '',
      args: [],
    );
  }

  /// `Авторизуйтесь для возможности\n заказа книг через приложение`
  String get authExecute {
    return Intl.message(
      'Авторизуйтесь для возможности\n заказа книг через приложение',
      name: 'authExecute',
      desc: '',
      args: [],
    );
  }

  /// `Авторизуйтесь для возможности добавления книг в Избранное`
  String get authNeedAddToFavourites {
    return Intl.message(
      'Авторизуйтесь для возможности добавления книг в Избранное',
      name: 'authNeedAddToFavourites',
      desc: '',
      args: [],
    );
  }

  /// `Авторизуйтесь для возможности заказа книг`
  String get authNeedAddToCart {
    return Intl.message(
      'Авторизуйтесь для возможности заказа книг',
      name: 'authNeedAddToCart',
      desc: '',
      args: [],
    );
  }

  /// `Логин`
  String get login {
    return Intl.message(
      'Логин',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message(
      'Пароль',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `ВОЙТИ`
  String get enter {
    return Intl.message(
      'ВОЙТИ',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get enterCapital {
    return Intl.message(
      'Войти',
      name: 'enterCapital',
      desc: '',
      args: [],
    );
  }

  /// `ЗАРЕГИСТРИРОВАТЬСЯ`
  String get signUp {
    return Intl.message(
      'ЗАРЕГИСТРИРОВАТЬСЯ',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `СОХРАНИТЬ`
  String get save {
    return Intl.message(
      'СОХРАНИТЬ',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрируйтесь для возможности\n заказа книг через приложение`
  String get registerForEnter {
    return Intl.message(
      'Зарегистрируйтесь для возможности\n заказа книг через приложение',
      name: 'registerForEnter',
      desc: '',
      args: [],
    );
  }

  /// `Успешно!`
  String get successfully {
    return Intl.message(
      'Успешно!',
      name: 'successfully',
      desc: '',
      args: [],
    );
  }

  /// `Вы успешно зарегистрировались.`
  String get successfullyRegister {
    return Intl.message(
      'Вы успешно зарегистрировались.',
      name: 'successfullyRegister',
      desc: '',
      args: [],
    );
  }

  /// `Введите email (логин)`
  String get inputEmail {
    return Intl.message(
      'Введите email (логин)',
      name: 'inputEmail',
      desc: '',
      args: [],
    );
  }

  /// `Введите ФИО или духовное имя`
  String get inputUserName {
    return Intl.message(
      'Введите ФИО или духовное имя',
      name: 'inputUserName',
      desc: '',
      args: [],
    );
  }

  /// `Введите пароль`
  String get inputPassword {
    return Intl.message(
      'Введите пароль',
      name: 'inputPassword',
      desc: '',
      args: [],
    );
  }

  /// `Главная`
  String get main {
    return Intl.message(
      'Главная',
      name: 'main',
      desc: '',
      args: [],
    );
  }

  /// `Избранное`
  String get favourites {
    return Intl.message(
      'Избранное',
      name: 'favourites',
      desc: '',
      args: [],
    );
  }

  /// `Корзина`
  String get cart {
    return Intl.message(
      'Корзина',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Популярные книги`
  String get popularBooks {
    return Intl.message(
      'Популярные книги',
      name: 'popularBooks',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка!`
  String get error {
    return Intl.message(
      'Ошибка!',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка! Товары не загружены`
  String get booksNotLoaded {
    return Intl.message(
      'Ошибка! Товары не загружены',
      name: 'booksNotLoaded',
      desc: '',
      args: [],
    );
  }

  /// `Список избранных книг пуст`
  String get emptyFavourites {
    return Intl.message(
      'Список избранных книг пуст',
      name: 'emptyFavourites',
      desc: '',
      args: [],
    );
  }

  /// `Цена: {price} ₽`
  String price(int price) {
    return Intl.message(
      'Цена: $price ₽',
      name: 'price',
      desc: '',
      args: [price],
    );
  }

  /// `Поиск по названию`
  String get searchFromName {
    return Intl.message(
      'Поиск по названию',
      name: 'searchFromName',
      desc: '',
      args: [],
    );
  }

  /// `Результаты не найдены`
  String get resultsNotFound {
    return Intl.message(
      'Результаты не найдены',
      name: 'resultsNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Мои заказы`
  String get myOrders {
    return Intl.message(
      'Мои заказы',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Все заказы`
  String get allOrders {
    return Intl.message(
      'Все заказы',
      name: 'allOrders',
      desc: '',
      args: [],
    );
  }

  /// `Заказ от `
  String get orderFrom {
    return Intl.message(
      'Заказ от ',
      name: 'orderFrom',
      desc: '',
      args: [],
    );
  }

  /// `Состав заказа`
  String get orderStructure {
    return Intl.message(
      'Состав заказа',
      name: 'orderStructure',
      desc: '',
      args: [],
    );
  }

  /// `Дата заказа: `
  String get orderDate {
    return Intl.message(
      'Дата заказа: ',
      name: 'orderDate',
      desc: '',
      args: [],
    );
  }

  /// `Сумма заказа: {sum} ₽`
  String orderSum(int sum) {
    return Intl.message(
      'Сумма заказа: $sum ₽',
      name: 'orderSum',
      desc: '',
      args: [sum],
    );
  }

  /// `Ваша корзина пуста`
  String get cartEmpty {
    return Intl.message(
      'Ваша корзина пуста',
      name: 'cartEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Общая сумма: {sum} ₽`
  String totalSum(int sum) {
    return Intl.message(
      'Общая сумма: $sum ₽',
      name: 'totalSum',
      desc: '',
      args: [sum],
    );
  }

  /// `ОТПРАВИТЬ ЗАКАЗ`
  String get sendOrder {
    return Intl.message(
      'ОТПРАВИТЬ ЗАКАЗ',
      name: 'sendOrder',
      desc: '',
      args: [],
    );
  }

  /// `ДОБАВИТЬ В КОРЗИНУ`
  String get addToCart {
    return Intl.message(
      'ДОБАВИТЬ В КОРЗИНУ',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `ДОБАВИТЬ В ИЗБРАННОЕ`
  String get addToFavourites {
    return Intl.message(
      'ДОБАВИТЬ В ИЗБРАННОЕ',
      name: 'addToFavourites',
      desc: '',
      args: [],
    );
  }

  /// `Выход`
  String get exit {
    return Intl.message(
      'Выход',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `1.0.0`
  String get applicationVersion {
    return Intl.message(
      '1.0.0',
      name: 'applicationVersion',
      desc: '',
      args: [],
    );
  }

  /// `Sergey Ogarkov © 2024`
  String get applicationLegalese {
    return Intl.message(
      'Sergey Ogarkov © 2024',
      name: 'applicationLegalese',
      desc: '',
      args: [],
    );
  }

  /// `О приложении`
  String get aboutApp {
    return Intl.message(
      'О приложении',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `Светлая тема`
  String get lightTheme {
    return Intl.message(
      'Светлая тема',
      name: 'lightTheme',
      desc: '',
      args: [],
    );
  }

  /// `Темная тема`
  String get darkTheme {
    return Intl.message(
      'Темная тема',
      name: 'darkTheme',
      desc: '',
      args: [],
    );
  }

  /// `Редактировать данные`
  String get editUserInfo {
    return Intl.message(
      'Редактировать данные',
      name: 'editUserInfo',
      desc: '',
      args: [],
    );
  }

  /// `Изменить имя`
  String get editUserName {
    return Intl.message(
      'Изменить имя',
      name: 'editUserName',
      desc: '',
      args: [],
    );
  }

  /// `Введите новый пароль`
  String get editPassword {
    return Intl.message(
      'Введите новый пароль',
      name: 'editPassword',
      desc: '',
      args: [],
    );
  }

  /// `Подтвердите пароль`
  String get confirmPassword {
    return Intl.message(
      'Подтвердите пароль',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Пароль успешно изменен`
  String get passwordSuccessfulChange {
    return Intl.message(
      'Пароль успешно изменен',
      name: 'passwordSuccessfulChange',
      desc: '',
      args: [],
    );
  }

  /// `Имя успешно изменено`
  String get nameSuccessfulChange {
    return Intl.message(
      'Имя успешно изменено',
      name: 'nameSuccessfulChange',
      desc: '',
      args: [],
    );
  }

  /// `Фото успешно изменено`
  String get photoSuccessfulChange {
    return Intl.message(
      'Фото успешно изменено',
      name: 'photoSuccessfulChange',
      desc: '',
      args: [],
    );
  }

  /// `Пароли не совпадают`
  String get passwordsNotMatch {
    return Intl.message(
      'Пароли не совпадают',
      name: 'passwordsNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Загрузить новую`
  String get uploadNew {
    return Intl.message(
      'Загрузить новую',
      name: 'uploadNew',
      desc: '',
      args: [],
    );
  }

  /// `Удалить`
  String get delete {
    return Intl.message(
      'Удалить',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Сделать снимок`
  String get fromCamera {
    return Intl.message(
      'Сделать снимок',
      name: 'fromCamera',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать из галереи`
  String get fromGallery {
    return Intl.message(
      'Выбрать из галереи',
      name: 'fromGallery',
      desc: '',
      args: [],
    );
  }

  /// `Отмена`
  String get cancel {
    return Intl.message(
      'Отмена',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Настройки`
  String get settings {
    return Intl.message(
      'Настройки',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Доступ к камере запрещён'`
  String get cameraPermissionDenied {
    return Intl.message(
      'Доступ к камере запрещён\'',
      name: 'cameraPermissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, включите разрешение камеры в настройках`
  String get turnOnCameraPermission {
    return Intl.message(
      'Пожалуйста, включите разрешение камеры в настройках',
      name: 'turnOnCameraPermission',
      desc: '',
      args: [],
    );
  }

  /// `Доступ к Фото запрещён'`
  String get photoPermissionDenied {
    return Intl.message(
      'Доступ к Фото запрещён\'',
      name: 'photoPermissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, включите доступ к Фото в настройках`
  String get turnOnPhotoPermission {
    return Intl.message(
      'Пожалуйста, включите доступ к Фото в настройках',
      name: 'turnOnPhotoPermission',
      desc: '',
      args: [],
    );
  }

  /// `Изменить фото`
  String get toolbarEditPhotoTitle {
    return Intl.message(
      'Изменить фото',
      name: 'toolbarEditPhotoTitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
