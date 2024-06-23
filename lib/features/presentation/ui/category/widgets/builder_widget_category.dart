import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/presentation/bloc/sidebar_visibility_bloc/sidebar_visibility_bloc.dart';
import 'package:bbt/features/presentation/ui/widgets/book_card_widget.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuilderCategoryWidget extends StatefulWidget {
  final List<BookEntity> categoryBooks;

  const BuilderCategoryWidget({super.key, required this.categoryBooks});

  @override
  State<BuilderCategoryWidget> createState() => _BuilderWidgetCategoryState();
}

class _BuilderWidgetCategoryState extends State<BuilderCategoryWidget> {
  late final FocusNode _focusNode;
  late List<BookEntity> _foundBooks;
  late final SidebarVisibilityBloc _sidebarVisibilityBloc;

  @override
  void initState() {
    _focusNode = FocusNode();
    _foundBooks = widget.categoryBooks;
    _sidebarVisibilityBloc = context.read<SidebarVisibilityBloc>();
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
            padding: kIsWeb ? const EdgeInsets.all(16) : const EdgeInsets.fromLTRB(16, 8, 8, 8),
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    style: const TextStyle(color: AppColors.greyColor2),
                    cursorColor: _focusNode.hasFocus
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).primaryColorDark,
                    focusNode: _focusNode,
                    showCursor: true,
                    textInputAction: TextInputAction.search,
                    autocorrect: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: _focusNode.hasFocus
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).primaryColorDark,
                      ),
                      filled: true,
                      hintText: S.current.searchFromName,
                      hintStyle: TextStyle(
                        color: _focusNode.hasFocus
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
                          color: _focusNode.hasFocus
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).primaryColorDark,
                          width: 1,
                        ),
                      ),
                    ),
                    onChanged: _runFilter,
                  ),
                ),
                if (kIsWeb) ...[
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () => _sidebarVisibilityBloc.add(OpenFavourites(true)),
                          icon: const Icon(Icons.favorite),
                          iconSize: 40,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(width: 32),
                        IconButton(
                          onPressed: () => _sidebarVisibilityBloc.add(OpenCart(true)),
                          icon: const Icon(Icons.shopping_cart),
                          iconSize: 40,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(width: 128),
                        IconButton(
                          onPressed: () => _sidebarVisibilityBloc.add(OpenProfile(true)),
                          icon: const Icon(Icons.account_circle),
                          iconSize: 46,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
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
