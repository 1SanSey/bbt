import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:bbt/features/presentation/bloc/navigation_web_cubit.dart';
import 'package:bbt/features/presentation/navigation/routes.dart';
import 'package:bbt/features/presentation/ui/web/widgets/menu_item_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DesktopMenu extends StatelessWidget {
  const DesktopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryBloc = context.read<CategoryBloc>();

    return Container(
      width: 256,
      height: MediaQuery.of(context).size.height,
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      context.read<NavigationWebCubit>().changePage(0);
                      context.goNamed(Routes.homePage);
                      categoryBloc.add(FetchCategoryBooksEvent(param: AppCategories.all.$3));
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
                        context.read<NavigationWebCubit>().changePage(i);
                        i == 0
                            ? context.goNamed(Routes.homePage)
                            : context
                                .goNamed(Routes.categoryPage, pathParameters: {'categoryId': '$i'});
                        categoryBloc
                            .add(FetchCategoryBooksEvent(param: AppConstants.category[i]!.$3));
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
              ),
            )),
      ),
    );
  }
}
