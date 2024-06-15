import 'dart:developer';

import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:bbt/features/presentation/bloc/change_theme_bloc/change_theme_bloc.dart';
import 'package:bbt/features/presentation/bloc/orders_bloc/orders_bloc.dart';
import 'package:bbt/features/presentation/navigation/navigation_manager.dart';
import 'package:bbt/features/presentation/ui/widgets/current_account_picture.dart';
import 'package:bbt/features/presentation/ui/widgets/current_user_builder.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CurrentUserBuilder(
      builder: (user) {
        log('CurrentUserBuilder $user');

        return Drawer(
          backgroundColor: Theme.of(context).primaryColor,
          width: MediaQuery.of(context).size.width * 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                accountName: Text(
                  user.displayName,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                accountEmail: Text(
                  user.email,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: CurrentAccountPicture(
                  photoURL: user.photoURL,
                  userName: user.displayName,
                  isDrawer: true,
                  onTap: NavigationManager.instance.goEditUserPage,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.home_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                        title: Text(
                          S.current.main,
                          style: const TextStyle(fontSize: 18, color: Colors.black87),
                        ),
                        onTap: NavigationManager.instance.goHomePage,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.list_alt,
                          color: Theme.of(context).primaryColor,
                        ),
                        title: Text(
                          S.current.myOrders,
                          style: const TextStyle(fontSize: 18, color: Colors.black87),
                        ),
                        onTap: () {
                          context.read<OrdersBloc>().add(OrdersEvent.fetch(userId: user.uid));
                          NavigationManager.instance.goOrdersPage(S.current.myOrders);
                        },
                      ),
                      if (user.isAdmin)
                        ListTile(
                          leading: Icon(
                            Icons.view_list,
                            color: Theme.of(context).primaryColor,
                          ),
                          title: Text(
                            S.current.allOrders,
                            style: const TextStyle(fontSize: 18, color: Colors.black87),
                          ),
                          onTap: () {
                            context.read<OrdersBloc>().add(const OrdersEvent.fetchAll());
                            NavigationManager.instance.goOrdersPage(S.current.allOrders);
                          },
                        ),
                      ListTile(
                        leading: Icon(
                          Icons.exit_to_app,
                          color: Theme.of(context).primaryColor,
                        ),
                        title: Text(
                          S.current.exit,
                          style: const TextStyle(fontSize: 18, color: Colors.black87),
                        ),
                        onTap: () {
                          context.read<AuthBloc>().add(const AuthEvent.logOut());
                          NavigationManager.instance.goAuthPage();
                        },
                      ),
                      const SizedBox(height: 60),
                      const Divider(
                        color: AppColors.greyColor,
                        thickness: 1,
                      ),
                      AboutListTile(
                        icon: Icon(
                          Icons.info_outline,
                          color: Theme.of(context).primaryColor,
                        ),
                        applicationIcon: const Icon(
                          Icons.local_play,
                        ),
                        applicationName: S.current.BBTKirovApp,
                        applicationVersion: S.current.applicationVersion,
                        applicationLegalese: S.current.applicationLegalese,
                        aboutBoxChildren: const [],
                        child: Text(
                          S.current.aboutApp,
                          style: const TextStyle(fontSize: 15, color: Colors.black87),
                        ),
                      ),
                      BlocBuilder<ChangeThemeBloc, ThemeState>(
                        builder: (context, state) {
                          return ListTile(
                            leading: Icon(
                              state.isDark ? Icons.nightlight_round : Icons.wb_sunny,
                              color: Theme.of(context).primaryColor,
                            ),
                            title: Text(
                              state.isDark ? S.current.darkTheme : S.current.lightTheme,
                              style: const TextStyle(fontSize: 15, color: Colors.black87),
                            ),
                            onTap: () =>
                                context.read<ChangeThemeBloc>().add(const ThemeEvent.change()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
