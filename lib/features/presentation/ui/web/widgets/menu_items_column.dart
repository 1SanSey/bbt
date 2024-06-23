import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:bbt/features/presentation/ui/web/widgets/menu_item_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuItemsColumn extends StatelessWidget {
  final int currentIndex;
  const MenuItemsColumn({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppConstants.bbtLogo,
            fit: BoxFit.cover,
            color: Colors.white,
          ),
          const SizedBox(height: 64),

          // Генерация навигационных элементов меню.
          ...List.generate(
            AppConstants.category.length,
            (i) => GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                final query = AppConstants.category[i]!.$3;
                final categoryBloc = context.read<CategoryBloc>();
                // Загрузка всех книг
                if (query == AppCategories.all.$3) {
                  categoryBloc.add(CategoryLoadAllBooksEvent(param: query, index: i));
                }

                // Загрузка книг по наименованию
                if (query == AppCategories.bg.$3 ||
                    query == AppCategories.sb.$3 ||
                    query == AppCategories.cc.$3) {
                  categoryBloc.add(CategoryLoadBooksByNameEvent(param: query, index: i));
                }

                // Загрузка книг по размеру
                if (query == AppCategories.small.$3 ||
                    query == AppCategories.medium.$3 ||
                    query == AppCategories.big.$3 ||
                    query == AppCategories.mahabig.$3) {
                  categoryBloc.add(CategoryLoadBooksBySizeEvent(param: query, index: i));
                }

                // Загрузка наборов книг
                if (query == AppCategories.set.$3) {
                  categoryBloc.add(CategoryLoadBooksSetEvent(param: query, index: i));
                }

                // Загрузка кулинарных книг
                if (query == AppCategories.culinary.$3) {
                  categoryBloc.add(CategoryLoadCulinaryBooksEvent(param: query, index: i));
                }
              },
              child: BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  return MenuItemRow(
                    item: AppConstants.category[i]!,
                    isActive: state.currentIndex == i,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
