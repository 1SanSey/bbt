import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/domain/entities/order_entity.dart';
import 'package:bbt/features/presentation/ui/authentication/pages/auth_page.dart';
import 'package:bbt/features/presentation/ui/authentication/pages/registration_page.dart';
import 'package:bbt/features/presentation/ui/category/pages/category_page.dart';
import 'package:bbt/features/presentation/ui/home/pages/home_page.dart';
import 'package:bbt/features/presentation/ui/orders/pages/order_detail_page.dart';
import 'package:bbt/features/presentation/ui/orders/pages/orders_page.dart';
import 'package:bbt/features/presentation/ui/user/edit_user_page.dart';
import 'package:bbt/features/presentation/ui/web/home_page_web.dart';
import 'package:bbt/features/presentation/ui/book/book_detail_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class RouteNames {
  const RouteNames._();

  static const authPage = '/';
  static const registrationPage = '/registration_page';
  static const editUserPage = '/edit_user_page';
  static const homePage = '/home_page';
  static const ordersPage = '/orders_page';
  static const categoryPage = '/category_page';
  static const bookDetailPage = '/book_detail_page';
  static const orderDetailPage = '/order_detail_page';
}

abstract class RouteBuilder {
  const RouteBuilder._();

  static const initialRoute = RouteNames.authPage;
  static final routes = <String, Widget Function(BuildContext)>{
    RouteNames.homePage: (context) => kIsWeb ? const HomePageWeb() : const HomePage(),
    RouteNames.authPage: (context) => const AuthPage(),
    RouteNames.registrationPage: (context) => const RegistrationPage(),
    RouteNames.editUserPage: (context) => const EditUserPage(),
  };

  static Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case (RouteNames.categoryPage):
        final id = settings.arguments as int;
        return MaterialPageRoute(builder: (context) => CategoryPage(idCategory: id));
      case (RouteNames.bookDetailPage):
        final book = settings.arguments as BookEntity;
        return MaterialPageRoute(builder: (context) => BookDetailPage(book: book));
      case (RouteNames.orderDetailPage):
        final order = settings.arguments as OrderEntity;
        return MaterialPageRoute(
          builder: (context) => OrderDetailPage(order: order),
        );
      case (RouteNames.ordersPage):
        final name = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) => OrdersPage(name: name),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Center(
            child: Text('Navigation Error'),
          ),
        );
    }
  }
}
