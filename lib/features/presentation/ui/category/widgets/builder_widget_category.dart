import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/presentation/ui/widgets/book_card_widget.dart';
import 'package:bbt/features/presentation/ui/widgets/header_widget.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BuilderCategoryWidget extends StatefulWidget {
  final List<BookEntity> categoryBooks;

  const BuilderCategoryWidget({super.key, required this.categoryBooks});

  @override
  State<BuilderCategoryWidget> createState() => _BuilderWidgetCategoryState();
}

class _BuilderWidgetCategoryState extends State<BuilderCategoryWidget> {
  late final FocusNode _focusNode;
  late List<BookEntity> _foundBooks;

  @override
  void initState() {
    _focusNode = FocusNode();
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
          child: HeaderWidget(focusNode: _focusNode, onChanged: _runFilter),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(kIsWeb ? 16 : 8),
          sliver: _foundBooks.isNotEmpty
              ? SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => BookCard(book: _foundBooks[index]),
                    childCount: _foundBooks.length,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: kIsWeb ? 4 : 2,
                    mainAxisSpacing: kIsWeb ? 16 : 8,
                    crossAxisSpacing: kIsWeb ? 16 : 8,
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
