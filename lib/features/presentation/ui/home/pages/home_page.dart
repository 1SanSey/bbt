import 'dart:io';

import 'package:bbt/features/presentation/bloc/home_books_bloc/home_books_bloc.dart';
import 'package:bbt/features/presentation/ui/cart/pages/cart_page.dart';
import 'package:bbt/features/presentation/ui/favorites/pages/favourites_page.dart';
import 'package:bbt/features/presentation/ui/home/widgets/main_page_widget.dart';
import 'package:bbt/features/presentation/ui/widgets/drawer_widget.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController tabController;
  late final List<String> titles;
  late String titleHandler;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    titles = [S.current.BBTKirovApp, S.current.favourites, S.current.cart];
    titleHandler = titles.first;
    tabController.addListener(changeTitle);
    context.read<HomeBooksBloc>().add(
          const HomeLoadBooksEvent(isFirstFetch: true),
        );
  }

  void changeTitle() {
    setState(() {
      titleHandler = titles[tabController.index];
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(titleHandler),
            centerTitle: true,
          ),
          body: TabBarView(
            controller: tabController,
            children: const <Widget>[
              MainPageWidget(),
              FavouritesPage(),
              CartPage(),
            ],
          ),
          bottomNavigationBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 56),
            child: Material(
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: Platform.isIOS ? const EdgeInsets.only(bottom: 12) : EdgeInsets.zero,
                child: TabBar(
                  controller: tabController,
                  labelColor: Colors.white,
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  unselectedLabelColor: Theme.of(context).primaryColorLight,
                  automaticIndicatorColorAdjustment: false,
                  tabs: <Widget>[
                    Tab(
                      icon: const Icon(Icons.home),
                      iconMargin: const EdgeInsets.only(top: 4, bottom: 3),
                      text: S.current.main,
                      height: 56,
                    ),
                    Tab(
                      icon: const Icon(Icons.favorite),
                      iconMargin: const EdgeInsets.only(top: 4, bottom: 3),
                      text: S.current.favourites,
                      height: 56,
                    ),
                    Tab(
                      icon: const Icon(Icons.shopping_basket),
                      iconMargin: const EdgeInsets.only(top: 4, bottom: 3),
                      text: S.current.cart,
                      height: 56,
                    ),
                  ],
                ),
              ),
            ),
          ),
          drawer: const DrawerWidget(),
        ),
      ),
    );
  }
}
