import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/presentation/bloc/navigation_web_cubit.dart';
import 'package:bbt/features/presentation/ui/book/book_detail_page.dart';
import 'package:bbt/features/presentation/ui/cart/pages/cart_page.dart';
import 'package:bbt/features/presentation/ui/favorites/pages/favourites_page.dart';
import 'package:bbt/features/presentation/ui/web/desktop_menu.dart';
import 'package:bbt/features/presentation/ui/web/widgets/category_content.dart';
import 'package:bbt/features/presentation/ui/web/widgets/sidebar_barrier_shell.dart';
import 'package:bbt/features/presentation/ui/web/widgets/sidebar_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({super.key});

  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  late String query;
  List<BookEntity> categoryBooks = [];
  late bool error;
  String? errorText;

  @override
  void initState() {
    super.initState();
    error = false;
    query = AppConstants.category[0]!.$3;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Row(
            children: [
              const DesktopMenu(),
              BlocBuilder<NavigationWebCubit, NavigationWebState>(
                builder: (context, state) {
                  return Expanded(
                    child: switch (state) {
                      NavigationWebState(index: 10) => BookDetailPage(
                          book: state.book!,
                          previousIndex: state.previousIndex,
                          queryCategory: state.queryCategory),
                      NavigationWebState(index: 11) => const FavouritesPage(),
                      NavigationWebState(index: 12) => const CartPage(),
                      _ => const CategoryContent(),
                    },
                  );
                },
              ),
            ],
          ),
        ),
        const SidebarBarrierShell(),
        const SidebarWeb(),
      ],
    );
  }
}
