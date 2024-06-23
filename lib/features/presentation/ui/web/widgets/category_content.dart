import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:bbt/features/presentation/ui/category/widgets/builder_widget_category.dart';
import 'package:bbt/features/presentation/ui/widgets/error_text_widget.dart';
import 'package:bbt/features/presentation/ui/widgets/loading_indicator.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryContent extends StatefulWidget {
  const CategoryContent({super.key});

  @override
  State<CategoryContent> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryContent> {
  List<BookEntity> categoryBooks = [];
  late bool error;
  String? errorText;

  @override
  void initState() {
    context.read<CategoryBloc>().add(CategoryLoadAllBooksEvent(param: AppCategories.all.$3));
    error = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CategoryBloc, CategoryState, bool>(
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
    );
  }
}
