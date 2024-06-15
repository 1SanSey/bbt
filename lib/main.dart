import 'dart:async';

import 'package:bbt/common/theme/themes.dart';
import 'package:bbt/core/app_config.dart';
import 'package:bbt/core/init_datasources.dart';
import 'package:bbt/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:bbt/features/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:bbt/features/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:bbt/features/presentation/bloc/change_theme_bloc/change_theme_bloc.dart';
import 'package:bbt/features/presentation/bloc/favourites_bloc/favourites_bloc.dart';
import 'package:bbt/features/presentation/bloc/get_user_bloc/get_user_bloc.dart';
import 'package:bbt/features/presentation/bloc/home_books_bloc/home_books_bloc.dart';
import 'package:bbt/features/presentation/bloc/orders_bloc/orders_bloc.dart';
import 'package:bbt/features/presentation/bloc/orders_bloc/send_order_bloc/send_order_bloc.dart';
import 'package:bbt/features/presentation/bloc/reg_bloc/registration_bloc.dart';
import 'package:bbt/features/presentation/bloc/update_display_name_bloc/update_display_name_bloc.dart';
import 'package:bbt/features/presentation/bloc/update_password_bloc/update_password_bloc.dart';
import 'package:bbt/features/presentation/navigation/navigation_manager.dart';
import 'package:bbt/features/presentation/navigation/route_builder.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:bbt/service_locator.dart' as di;
import 'package:bbt/service_locator.dart';
import 'package:bbt/utils/app_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runZonedGuarded<void>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await AppConfig.load();
      await InitDatasources.instance.initParse();
      await InitDatasources.instance.initHive();
      await di.init();

      HydratedBloc.storage =
          await HydratedStorage.build(storageDirectory: await getApplicationDocumentsDirectory());

      Bloc.observer = AppBlocObserver.instance();

      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
      );

      runApp(const MyApp());
    },
    (error, stackTrace) {
      sl<Logger>().e('$error\n$stackTrace');
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) => di.sl<AuthBloc>()),
        BlocProvider<RegistrationBloc>(create: (context) => di.sl<RegistrationBloc>()),
        BlocProvider<ChangeThemeBloc>(create: (context) => di.sl<ChangeThemeBloc>()),
        BlocProvider<HomeBooksBloc>(create: (context) => di.sl<HomeBooksBloc>()),
        BlocProvider<CategoryBloc>(create: (context) => di.sl<CategoryBloc>()),
        BlocProvider<CartBloc>(create: (context) => di.sl<CartBloc>()),
        BlocProvider<FavouritesBloc>(create: (context) => di.sl<FavouritesBloc>()),
        BlocProvider<OrdersBloc>(create: (context) => di.sl<OrdersBloc>()),
        BlocProvider<SendOrderBloc>(create: (context) => di.sl<SendOrderBloc>()),
        BlocProvider<GetUserBloc>(create: (context) => di.sl<GetUserBloc>()),
        BlocProvider<UpdateDisplayNameBloc>(create: (context) => di.sl<UpdateDisplayNameBloc>()),
        BlocProvider<UpdatePasswordBloc>(create: (context) => di.sl<UpdatePasswordBloc>()),
      ],
      child: BlocBuilder<ChangeThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: state.isDark ? darkTheme() : lightTheme(),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: const Locale.fromSubtags(languageCode: 'ru'),
            debugShowCheckedModeBanner: false,
            navigatorKey: NavigationManager.instance.key,
            routes: RouteBuilder.routes,
            initialRoute: RouteBuilder.initialRoute,
            onGenerateRoute: RouteBuilder.onGenerateRoute,
          );
        },
      ),
    );
  }
}
