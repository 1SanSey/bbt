// ignore_for_file: avoid_types_on_closure_parameters

import 'package:bbt/features/presentation/bloc/sidebar_visibility_bloc/sidebar_visibility_bloc.dart';
import 'package:bbt/features/presentation/ui/book/book_detail_page.dart';
import 'package:bbt/features/presentation/ui/cart/pages/cart_page.dart';
import 'package:bbt/features/presentation/ui/favorites/pages/favourites_page.dart';
import 'package:bbt/features/presentation/ui/user/edit_user_page.dart';
import 'package:bbt/utils/expandable_page_view/src/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SidebarWeb extends StatefulWidget {
  const SidebarWeb({super.key});

  @override
  State<SidebarWeb> createState() => _ProfileDataWebState();
}

class _ProfileDataWebState extends State<SidebarWeb> {
  late double contentOpacity;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    contentOpacity = 0;
    pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Align(
        alignment: Alignment.centerRight,
        child: BlocConsumer<SidebarVisibilityBloc, SidebarVisibilityState>(
          listener: (context, state) async {
            final isProfileVisible = state is ProfileVisibilityState && state.isActive;
            final isFavouritesVisible = state is FavouritesVisibilityState && state.isActive;
            final isCartVisible = state is CartVisibilityState && state.isActive;
            final isBookDetailVisible = state is BookDetailVisibilityState && state.isActive;

            if (isProfileVisible) {
              setState(() {
                contentOpacity = 0;
              });
              await Future<dynamic>.delayed(const Duration(milliseconds: 155));
              setState(() {
                contentOpacity = 1;
              });
              pageController.jumpToPage(0);
            } else if (isFavouritesVisible) {
              setState(() {
                contentOpacity = 0;
              });
              await Future<dynamic>.delayed(const Duration(milliseconds: 155));
              setState(() {
                contentOpacity = 1;
              });
              pageController.jumpToPage(1);
            } else if (isCartVisible) {
              setState(() {
                contentOpacity = 0;
              });
              await Future<dynamic>.delayed(const Duration(milliseconds: 155));
              setState(() {
                contentOpacity = 1;
              });
              pageController.jumpToPage(2);
            } else if (isBookDetailVisible) {
              setState(() {
                contentOpacity = 0;
              });
              await Future<dynamic>.delayed(const Duration(milliseconds: 155));
              setState(() {
                contentOpacity = 1;
              });
              pageController.jumpToPage(3);
            } else {
              setState(() {
                contentOpacity = 0;
              });
            }
          },
          builder: (context, state) {
            final isVisible = state is ProfileVisibilityState && state.isActive ||
                state is FavouritesVisibilityState && state.isActive ||
                state is CartVisibilityState && state.isActive ||
                state is BookDetailVisibilityState && state.isActive;

            return Material(
              child: AnimatedContainer(
                  curve: Curves.easeInOut,
                  duration: const Duration(milliseconds: 300),
                  height: MediaQuery.of(context).size.height,
                  width: isVisible ? 408 : 0,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: isVisible ? 220 : 75),
                    opacity: contentOpacity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 32,
                      ),
                      child: ExpandablePageView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: pageController,
                        children: [
                          const EditUserPage(),
                          const FavouritesPage(),
                          const CartPage(),
                          if (state is BookDetailVisibilityState)
                            if (state.book != null)
                              BookDetailPage(book: state.book!)
                            else
                              Container()
                        ],
                      ),
                    ),
                  )),
            );
          },
        ),
      ),
    );
  }
}
