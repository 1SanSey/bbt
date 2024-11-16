import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/domain/entities/order_entity.dart';
import 'package:bbt/features/presentation/ui/book/book_detail_page.dart';
import 'package:bbt/features/presentation/ui/cart/pages/cart_page.dart';
import 'package:bbt/features/presentation/ui/category/pages/category_page.dart';
import 'package:bbt/features/presentation/ui/favorites/pages/favourites_page.dart';
import 'package:bbt/features/presentation/ui/home/pages/home_page.dart';
import 'package:bbt/features/presentation/ui/orders/pages/order_detail_page.dart';
import 'package:bbt/features/presentation/ui/orders/pages/orders_page.dart';
import 'package:bbt/features/presentation/ui/user/edit_user_page.dart';
import 'package:bbt/features/presentation/ui/widgets/web_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class Routes {
  static const homePage = '/';
  static const categoryPage = 'category_page';
  static const bookDetailPage = 'book_detail_page';
  static const editUserPage = 'edit_user_page';
  static const ordersPage = 'orders_page';
  static const orderDetailPage = 'order_detail_page';
  static const favouritesPage = 'favourites_page';
  static const cartPage = 'cart_page';
  static const root = 'root';
}

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: Routes.root);

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: rootNavigatorKey,
  routes: [
    GoRoute(
      name: Routes.homePage,
      path: '/',
      pageBuilder: (context, state) => CustomTransitionPage(
        child: const HomePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
          opacity: CurvedAnimation(
            parent: animation,
            curve: Curves.easeOut,
          ),
          child: child,
        ),
      ),
    ),
    GoRoute(
      name: Routes.categoryPage,
      path: '/category/:categoryId',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: CategoryPage(idCategory: int.parse(state.pathParameters['categoryId'] ?? '0')),
          transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
            ),
            child: child,
          ),
        );
      },
    ),
    GoRoute(
      name: Routes.bookDetailPage,
      path: '/book/:bookId',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: BookDetailPage(
            key: state.pageKey,
            book: state.extra as BookEntity?,
            id: int.parse(state.pathParameters['bookId']!),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
            ),
            child: child,
          ),
        );
      },
    ),
    GoRoute(
      name: Routes.editUserPage,
      path: '/edit/user',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const EditUserPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
            ),
            child: child,
          ),
        );
      },
    ),
    GoRoute(
      name: Routes.ordersPage,
      path: '/orders',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: OrdersPage(name: state.extra as String),
          transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
            ),
            child: child,
          ),
        );
      },
      routes: [
        GoRoute(
          name: Routes.orderDetailPage,
          path: 'order/:id',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: OrderDetailPage(order: state.extra as OrderEntity),
              transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
                opacity: CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeOut,
                ),
                child: child,
              ),
            );
          },
        ),
      ],
    ),
    GoRoute(
      name: Routes.favouritesPage,
      path: '/favourites',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const WebWrapper(child: FavouritesPage()),
          transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
            ),
            child: child,
          ),
        );
      },
    ),
    GoRoute(
      name: Routes.cartPage,
      path: '/cart',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const WebWrapper(child: CartPage()),
          transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
            ),
            child: child,
          ),
        );
      },
    ),
  ],
);
