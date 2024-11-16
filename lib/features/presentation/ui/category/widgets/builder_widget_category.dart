import 'dart:developer';

import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:bbt/features/presentation/ui/widgets/book_card_widget.dart';
import 'package:bbt/features/presentation/ui/widgets/error_text_widget.dart';
import 'package:bbt/features/presentation/ui/widgets/header_widget.dart';
import 'package:bbt/features/presentation/ui/widgets/loading_indicator.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:bbt/utils/pull_to_refresh_flutter3/src/smart_refresher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuilderCategoryWidget extends StatefulWidget {
  final int idCategory;
  final RefreshController refreshController;

  const BuilderCategoryWidget({
    super.key,
    required this.idCategory,
    required this.refreshController,
  });

  @override
  State<BuilderCategoryWidget> createState() => _BuilderWidgetCategoryState();
}

class _BuilderWidgetCategoryState extends State<BuilderCategoryWidget> {
  List<BookEntity>? _foundBooks;
  List<BookEntity> _books = [];
  late final FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<BookEntity> resultsBooks = [];
    resultsBooks = enteredKeyword.isEmpty
        ? _books
        : _books
            .where((book) => book.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
            .toList();

    setState(() {
      log('enteredKeyword $enteredKeyword');
      _foundBooks = resultsBooks;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: BlocConsumer<CategoryBloc, CategoryState>(
        listener: (context, state) => _listenBloc(state),
        builder: (context, state) {
          if (state is CategoryBooksLoaded) {
            _books = state.books;
            _foundBooks ??= state.books;
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: HeaderWidget(focusNode: _focusNode, onChanged: _runFilter),
                ),
                SliverPadding(
                  padding: EdgeInsets.all(kIsWeb && width > 900 ? 16 : 8),
                  sliver: _foundBooks != null && _foundBooks!.isNotEmpty
                      ? SliverGrid(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => BookCardWidget(book: _foundBooks![index]),
                            childCount: _foundBooks!.length,
                          ),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: kIsWeb && width > 900 ? 4 : 2,
                            mainAxisSpacing: kIsWeb && width > 900 ? 16 : 8,
                            crossAxisSpacing: kIsWeb && width > 900 ? 16 : 8,
                            mainAxisExtent: 270,
                          ),
                        )
                      : SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 200),
                            child: Center(
                              child: Text(
                                S.current.resultsNotFound,
                                style: const TextStyle(fontSize: 24),
                              ),
                            ),
                          ),
                        ),
                ),
              ],
            );
          }

          if (state is CategoryBooksError) {
            return ErrorTextWidget(errorMessage: state.message);
          } else if ((state is CategoryBooksEmpty || state is CategoryBooksLoading) &&
              !widget.refreshController.isRefresh) {
            return const LoadingIndicator();
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }

  // Функция управляет лоадером pull to refresh.
  Future<void> _listenBloc(CategoryState state) async {
    if (state is CategoryBooksLoading && widget.refreshController.isRefresh) {
      await widget.refreshController.requestLoading();
    } else if (state is CategoryBooksLoaded || state is CategoryBooksError) {
      widget.refreshController.refreshCompleted();
    }
  }
}
