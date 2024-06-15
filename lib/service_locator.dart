// ignore_for_file: type_annotate_public_apis

import 'package:bbt/core/logger/logger_service.dart';
import 'package:bbt/core/platform/network_info.dart';
import 'package:bbt/features/data/datasouces/books_local_datasource_impl.dart';
import 'package:bbt/features/data/datasouces/books_remote_datasource_impl.dart';
import 'package:bbt/features/data/datasouces/orders_remote_datasource_impl.dart';
import 'package:bbt/features/data/datasouces/user_remote_datasource_impl.dart';
import 'package:bbt/features/data/i_datasources/i_books_local_datasource.dart';
import 'package:bbt/features/data/i_datasources/i_books_remote_datasource.dart';
import 'package:bbt/features/data/i_datasources/i_orders_remote_datasource.dart';
import 'package:bbt/features/data/i_datasources/i_user_remote_datasorce.dart';
import 'package:bbt/features/data/repositories/auth_repository_impl.dart';
import 'package:bbt/features/data/repositories/books_home_repository_impl.dart';
import 'package:bbt/features/data/repositories/cart_repository_impl.dart';
import 'package:bbt/features/data/repositories/categories_repository_impl.dart';
import 'package:bbt/features/data/repositories/favourites_repository_impl.dart';
import 'package:bbt/features/data/repositories/orders_repository_impl.dart';
import 'package:bbt/features/data/repositories/user_repository_impl.dart';
import 'package:bbt/features/domain/repositories/i_auth_repository.dart';
import 'package:bbt/features/domain/repositories/i_books_home_repository.dart';
import 'package:bbt/features/domain/repositories/i_cart_repository.dart';
import 'package:bbt/features/domain/repositories/i_categories_repository.dart';
import 'package:bbt/features/domain/repositories/i_favourites_repository.dart';
import 'package:bbt/features/domain/repositories/i_orders_repository.dart';
import 'package:bbt/features/domain/repositories/i_user_repository.dart';
import 'package:bbt/features/domain/usecases/cart_usecase.dart';
import 'package:bbt/features/domain/usecases/categories/categories_usecases.dart';
import 'package:bbt/features/domain/usecases/categories/search_books_usecases.dart';
import 'package:bbt/features/domain/usecases/favourites_usecase.dart';
import 'package:bbt/features/domain/usecases/orders_usecase.dart';
import 'package:bbt/features/domain/usecases/popular_usecase.dart';
import 'package:bbt/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:bbt/features/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:bbt/features/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:bbt/features/presentation/bloc/change_theme_bloc/change_theme_bloc.dart';
import 'package:bbt/features/presentation/bloc/edit_profile_photo_bloc/edit_profile_photo_bloc.dart';
import 'package:bbt/features/presentation/bloc/favourites_bloc/favourites_bloc.dart';
import 'package:bbt/features/presentation/bloc/get_user_bloc/get_user_bloc.dart';
import 'package:bbt/features/presentation/bloc/home_books_bloc/home_books_bloc.dart';
import 'package:bbt/features/presentation/bloc/orders_bloc/orders_bloc.dart';
import 'package:bbt/features/presentation/bloc/orders_bloc/send_order_bloc/send_order_bloc.dart';
import 'package:bbt/features/presentation/bloc/reg_bloc/registration_bloc.dart';
import 'package:bbt/features/presentation/bloc/update_display_name_bloc/update_display_name_bloc.dart';
import 'package:bbt/features/presentation/bloc/update_password_bloc/update_password_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final sl = GetIt.instance;

init() async {
//BLoC & Cubit
  sl
    ..registerFactory(() => HomeBooksBloc(popularBooks: sl()))
    ..registerFactory(() => CategoryBloc(
          allBooks: sl(),
          booksBySize: sl(),
          booksByName: sl(),
          setBooks: sl(),
          culinaryBooks: sl(),
          searchBooks: sl(),
        ))
    ..registerFactory(() => CartBloc(cart: sl()))
    ..registerFactory(() => FavouritesBloc(favourites: sl()))
    ..registerFactory(() => AuthBloc(repository: sl()))
    ..registerFactory(() => RegistrationBloc(sl()))
    ..registerFactory(ChangeThemeBloc.new)
    ..registerFactory(() => OrdersBloc(sl(), sl()))
    ..registerFactory(() => GetUserBloc(repo: sl()))
    ..registerFactory(() => UpdateDisplayNameBloc(repo: sl()))
    ..registerFactory(() => UpdatePasswordBloc(repo: sl()))
    ..registerFactory(() => SendOrderBloc(ordersUseCase: sl()))
    ..registerFactory(() => UpdateUserPhotoBloc(repository: sl(), picker: sl()))

//UseCases
    ..registerLazySingleton(() => PopularUsecase(sl()))
    ..registerLazySingleton(() => AllBooksUsecase(sl()))
    ..registerLazySingleton(() => BooksBySizeUsecase(sl()))
    ..registerLazySingleton(() => BooksByNameUsecase(sl()))
    ..registerLazySingleton(() => SetBooksUsecase(sl()))
    ..registerLazySingleton(() => CulinaryBooksUsecase(sl()))
    ..registerLazySingleton(() => SearchBooksUsecase(sl()))
    ..registerLazySingleton(() => CartUsecase(sl()))
    ..registerLazySingleton(() => FavouritesUsecase(sl()))
    ..registerLazySingleton(() => OrdersUsecase(sl()))
    ..registerLazySingleton(() => SendOrderUsecase(sl()))

//Repositories
    ..registerLazySingleton<IBooksHomeRepository>(
      () => BooksHomeRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()),
    )
    ..registerLazySingleton<ICategoriesRepository>(
      () => CategoriesRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()),
    )
    ..registerLazySingleton<ICartRepository>(
      () => CartRepositoryImpl(localDataSource: sl(), remoteDataSource: sl(), networkInfo: sl()),
    )
    ..registerLazySingleton<IFavouritesRepository>(
      () => FavouritesRepositoryImpl(hiveDataSource: sl(), networkInfo: sl()),
    )
    ..registerLazySingleton<IAuthRepository>(
      () => AuthRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()),
    )
    ..registerLazySingleton<IOrdersRepository>(
      () => OrdersRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()),
    )
    ..registerLazySingleton<IUserRepository>(
      () => UserRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()),
    )

//Datasources
    ..registerLazySingleton<IUserRemoteDatasource>(
      UserRemoteDatasourceImpl.new,
    )
    ..registerLazySingleton<IBooksRemoteDatasource>(
      BooksRemoteDatasourceImpl.new,
    )
    ..registerLazySingleton<IOrdersRemoteDatasource>(
      () => OrdersRemoteDatasourceImpl(dio: sl()),
    )
    ..registerLazySingleton<IBooksLocalDatasource>(
      BooksLocalDatasourceImpl.new,
    )

//Core
    ..registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()))
    ..registerLazySingleton(() => LoggerService.inject)
    ..registerLazySingleton<ImagePicker>(ImagePicker.new)
    ..registerLazySingleton<Dio>(Dio.new)

//External
    ..registerLazySingleton(InternetConnectionChecker.new);
}
