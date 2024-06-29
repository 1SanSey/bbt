import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:bbt/features/presentation/bloc/navigation_web_cubit.dart';
import 'package:bbt/features/presentation/ui/web/widgets/menu_item_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DesktopMenu extends StatelessWidget {
  const DesktopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryBloc = context.read<CategoryBloc>();

    return Container(
      width: 256,
      height: MediaQuery.of(context).size.height,
      color: AppColors.primaryColorLight,
      child: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    context.read<NavigationWebCubit>().changePage(0);
                    categoryBloc.add(CategoryLoadAllBooksEvent(param: AppCategories.all.$3));
                  },
                  child: Image.asset(
                    AppConstants.bbtLogo,
                    fit: BoxFit.cover,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 64),

                // Генерация навигационных элементов меню.
                ...List.generate(
                  AppConstants.category.length,
                  (i) => GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      final query = AppConstants.category[i]!.$3;
                      context.read<NavigationWebCubit>().changePage(i);
                      // Загрузка всех книг
                      if (query == AppCategories.all.$3) {
                        categoryBloc.add(CategoryLoadAllBooksEvent(param: query));
                      }

                      // Загрузка книг по наименованию
                      if (query == AppCategories.bg.$3 ||
                          query == AppCategories.sb.$3 ||
                          query == AppCategories.cc.$3) {
                        categoryBloc.add(CategoryLoadBooksByNameEvent(param: query));
                      }

                      // Загрузка книг по размеру
                      if (query == AppCategories.small.$3 ||
                          query == AppCategories.medium.$3 ||
                          query == AppCategories.big.$3 ||
                          query == AppCategories.mahabig.$3) {
                        categoryBloc.add(CategoryLoadBooksBySizeEvent(param: query));
                      }

                      // Загрузка наборов книг
                      if (query == AppCategories.set.$3) {
                        categoryBloc.add(CategoryLoadBooksSetEvent(param: query));
                      }

                      // Загрузка кулинарных книг
                      if (query == AppCategories.culinary.$3) {
                        categoryBloc.add(CategoryLoadCulinaryBooksEvent(param: query));
                      }
                    },
                    child: BlocBuilder<NavigationWebCubit, NavigationWebState>(
                      builder: (context, state) {
                        return MenuItem(
                          item: AppConstants.category[i]!,
                          isActive: state.index == i,
                        );
                      },
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
