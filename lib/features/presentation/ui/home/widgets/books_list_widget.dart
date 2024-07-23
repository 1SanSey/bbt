// ignore_for_file: prefer_final_locals

import 'package:bbt/features/presentation/bloc/home_books_bloc/home_books_bloc.dart';
import 'package:bbt/features/presentation/ui/widgets/book_card_widget.dart';
import 'package:bbt/features/presentation/ui/widgets/error_text_widget.dart';
import 'package:bbt/features/presentation/ui/widgets/loading_indicator.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListWidget extends StatelessWidget {
  const BooksListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBooksBloc, HomeBooksState>(builder: (context, state) {
      final homeBooks = state.books;

      if (state is HomeBooksLoading) {
        return const SliverToBoxAdapter(child: LoadingIndicator());
      }
      if (state is HomeBooksLoaded) {
        if (homeBooks.isEmpty) {
          return SliverToBoxAdapter(child: ErrorTextWidget(errorMessage: S.current.booksNotLoaded));
        }
      } else if (state is HomeBooksError) {
        return SliverToBoxAdapter(child: ErrorTextWidget(errorMessage: state.message));
      }

      return SliverPadding(
        padding: const EdgeInsets.only(bottom: 16, right: 8, left: 8),
        sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return BookCardWidget(book: homeBooks[index]);
            },
            childCount: homeBooks.length,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 270,
          ),
        ),
      );
    });
  }
}
