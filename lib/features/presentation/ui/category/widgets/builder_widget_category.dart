import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/presentation/ui/widgets/book_card_widget.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/material.dart';

class BuilderCategoryWidget extends StatefulWidget {
  final List<BookEntity> categoryBooks;

  const BuilderCategoryWidget({super.key, required this.categoryBooks});

  @override
  State<BuilderCategoryWidget> createState() => _BuilderWidgetCategoryState();
}

class _BuilderWidgetCategoryState extends State<BuilderCategoryWidget> {
  final FocusNode? focusNode = FocusNode();
  late List<BookEntity> _foundBooks;

  @override
  void initState() {
    _foundBooks = widget.categoryBooks;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<BookEntity> resultsBooks = [];
    resultsBooks = enteredKeyword.isEmpty
        ? widget.categoryBooks
        : widget.categoryBooks
            .where((book) => book.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
            .toList();

    setState(() {
      _foundBooks = resultsBooks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8, left: 8, right: 8),
            child: TextField(
              style: const TextStyle(color: AppColors.greyColor2),
              cursorColor: focusNode!.hasFocus
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).primaryColorDark,
              focusNode: focusNode,
              showCursor: true,
              textInputAction: TextInputAction.search,
              autocorrect: false,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: focusNode!.hasFocus
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColorDark,
                ),
                filled: true,
                hintText: S.current.searchFromName,
                hintStyle: TextStyle(
                  color: focusNode!.hasFocus
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColorDark,
                ),
                fillColor: AppColors.greyColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: AppColors.greyColor,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: focusNode!.hasFocus
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).primaryColorDark,
                    width: 1,
                  ),
                ),
              ),
              onChanged: _runFilter,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8),
          sliver: _foundBooks.isNotEmpty
              ? SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return BookCard(book: _foundBooks[index]);
                    },
                    childCount: _foundBooks.length,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
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
      ]),
    );
  }
}
