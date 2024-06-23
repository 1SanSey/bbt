//ignore_for_file: avoid-global-state

import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:bbt/features/presentation/navigation/navigation_manager.dart';
import 'package:bbt/features/presentation/ui/category/widgets/builder_widget_category.dart';
import 'package:bbt/features/presentation/ui/widgets/error_text_widget.dart';
import 'package:bbt/features/presentation/ui/widgets/loading_indicator.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryPage extends StatefulWidget {
  final int idCategory;

  const CategoryPage({super.key, required this.idCategory});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  late String query;
  List<BookEntity> categoryBooks = [];
  late bool error;
  String? errorText;

  @override
  void initState() {
    super.initState();
    error = false;
    query = AppConstants.category[widget.idCategory]!.$3;

    // Загрузка всех книг
    if (query == AppCategories.all.$3) {
      context.read<CategoryBloc>().add(CategoryLoadAllBooksEvent(param: query));
    }

    // Загрузка книг по наименованию
    if (query == AppCategories.bg.$3 ||
        query == AppCategories.sb.$3 ||
        query == AppCategories.cc.$3) {
      context.read<CategoryBloc>().add(CategoryLoadBooksByNameEvent(param: query));
    }

    // Загрузка книг по размеру
    if (query == AppCategories.small.$3 ||
        query == AppCategories.medium.$3 ||
        query == AppCategories.big.$3 ||
        query == AppCategories.mahabig.$3) {
      context.read<CategoryBloc>().add(CategoryLoadBooksBySizeEvent(param: query));
    }

    // Загрузка наборов книг
    if (query == AppCategories.set.$3) {
      context.read<CategoryBloc>().add(CategoryLoadBooksSetEvent(param: query));
    }

    // Загрузка кулинарных книг
    if (query == AppCategories.culinary.$3) {
      context.read<CategoryBloc>().add(CategoryLoadCulinaryBooksEvent(param: query));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: NavigationManager.instance.pop,
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(AppConstants.category[widget.idCategory]!.$2),
        centerTitle: true,
      ),
      body: BlocSelector<CategoryBloc, CategoryState, bool>(
        selector: (state) {
          if (state is CategoryBooksEmpty) {
            return false;
          }
          if (state is CategoryBooksLoading) {
            return false;
          }
          if (state is CategoryBooksLoaded) {
            categoryBooks = state.books;

            if (categoryBooks.isEmpty) {
              error = true;
              errorText = S.current.booksNotLoaded;

              return false;
            }

            return true;
          } else if (state is CategoryBooksError) {
            error = true;
            errorText = state.message;

            return false;
          } else {
            return false;
          }
        },
        builder: (context, state) {
          if (state) {
            return BuilderCategoryWidget(
              categoryBooks: categoryBooks,
            );
          } else {
            if (error) {
              ErrorTextWidget(errorMessage: errorText ?? 'Error!');
            }
          }

          return const LoadingIndicator();
        },
      ),
    );
  }
}
