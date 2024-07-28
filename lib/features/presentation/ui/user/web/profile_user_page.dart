import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:bbt/features/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:bbt/features/presentation/bloc/change_theme_bloc/change_theme_bloc.dart';
import 'package:bbt/features/presentation/bloc/favourites_bloc/favourites_bloc.dart';
import 'package:bbt/features/presentation/bloc/orders_bloc/orders_bloc.dart';
import 'package:bbt/features/presentation/bloc/sidebar_visibility_bloc/sidebar_visibility_bloc.dart';
import 'package:bbt/features/presentation/ui/authentication/pages/auth_popup_content.dart';
import 'package:bbt/features/presentation/ui/authentication/widgets/show_auth_popup.dart';
import 'package:bbt/features/presentation/ui/widgets/current_account_picture.dart';
import 'package:bbt/features/presentation/ui/widgets/current_user_builder.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileUserPage extends StatelessWidget {
  final PageController pageController;
  const ProfileUserPage({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return CurrentUserBuilder(builder: (user) {
      return Column(
        children: [
          if (user.isEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                AppConstants.noImage,
                fit: BoxFit.cover,
                width: 250,
                height: 250,
              ),
            )
          else
            CurrentAccountPicture(
              photoURL: user.photoURL,
              userName: user.displayName,
              isDrawer: false,
              onTap: () => pageController.jumpToPage(1),
            ),
          if (!user.isEmpty) ...[
            Text(
              user.displayName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              user.email,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
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
                pageController.jumpToPage(2);
              },
            ),
          ],
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
                pageController.jumpToPage(3);
              },
            ),
          ListTile(
            leading: Icon(
              user.isEmpty ? Icons.door_front_door : Icons.exit_to_app,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              user.isEmpty ? S.current.enterCapital : S.current.exit,
              style: const TextStyle(fontSize: 18, color: Colors.black87),
            ),
            onTap: () {
              if (!user.isEmpty) {
                context
                  ..read<FavouritesBloc>().add(RemoveFavouritesEvent())
                  ..read<CartBloc>().add(RemoveAllCartEvent())
                  ..read<SidebarVisibilityBloc>().add(OpenProfile(false))
                  ..read<AuthBloc>().add(const AuthEvent.logOut());
              } else {
                showAuthPopup(context, child: const AuthPopupContent(), height: 542);
              }
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
                  onTap: () {
                    context.read<SidebarVisibilityBloc>().add(OpenProfile(false));
                    context.read<ChangeThemeBloc>().add(const ThemeEvent.change());
                  });
            },
          ),
        ],
      );
    });
  }
}
