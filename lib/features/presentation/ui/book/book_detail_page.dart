import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/data/models/cart_book_model/cart_book_model.dart';
import 'package:bbt/features/data/models/favourites_book_model/favourites_book_model.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:bbt/features/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:bbt/features/presentation/bloc/favourites_bloc/favourites_bloc.dart';
import 'package:bbt/features/presentation/bloc/navigation_web_cubit.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailPage extends StatefulWidget {
  final BookEntity book;
  final int? previousIndex;
  final String? queryCategory;

  const BookDetailPage({super.key, required this.book, this.previousIndex, this.queryCategory});

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  late bool _isTapped;
  late int _count;

  @override
  void initState() {
    _isTapped = false;
    _count = 1;
    super.initState();
  }

  void _increment() {
    setState(() {
      ++_count;
    });
  }

  void _decrement() {
    setState(() {
      if (_count > 1) {
        --_count;
      } else {
        _count;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: kIsWeb
            ? MaterialButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: const CircleBorder(),
                onPressed: () {
                  final categoryBloc = context.read<CategoryBloc>();

                  // Загрузка всех книг
                  if (widget.queryCategory == AppCategories.all.$3) {
                    categoryBloc.add(CategoryLoadAllBooksEvent(param: widget.queryCategory!));
                  }

                  // Загрузка книг по наименованию
                  if (widget.queryCategory == AppCategories.bg.$3 ||
                      widget.queryCategory == AppCategories.sb.$3 ||
                      widget.queryCategory == AppCategories.cc.$3) {
                    categoryBloc.add(CategoryLoadBooksByNameEvent(param: widget.queryCategory!));
                  }

                  // Загрузка книг по размеру
                  if (widget.queryCategory == AppCategories.small.$3 ||
                      widget.queryCategory == AppCategories.medium.$3 ||
                      widget.queryCategory == AppCategories.big.$3 ||
                      widget.queryCategory == AppCategories.mahabig.$3) {
                    categoryBloc.add(CategoryLoadBooksBySizeEvent(param: widget.queryCategory!));
                  }

                  // Загрузка наборов книг
                  if (widget.queryCategory == AppCategories.set.$3) {
                    categoryBloc.add(CategoryLoadBooksSetEvent(param: widget.queryCategory!));
                  }

                  // Загрузка кулинарных книг
                  if (widget.queryCategory == AppCategories.culinary.$3) {
                    categoryBloc.add(CategoryLoadCulinaryBooksEvent(param: widget.queryCategory!));
                  }

                  // Загрузка прочих книг
                  if (widget.queryCategory == AppCategories.other.$3) {
                    context.read<CategoryBloc>().add(const CategoryLoadOtherBooksEvent());
                  }

                  context.read<NavigationWebCubit>().changePage(widget.previousIndex ?? 0,
                      previousIndex: widget.previousIndex, queryCategory: widget.queryCategory);
                },
                minWidth: 36,
                padding: const EdgeInsets.all(6),
                child: const Icon(
                  Icons.arrow_back,
                  color: AppColors.greyColor2,
                ),
              )
            : null,
        title: kIsWeb ? null : Text(widget.book.name),
        centerTitle: true,
        backgroundColor: kIsWeb ? Colors.white : null,
      ),
      body: SafeArea(
        child: Row(
          children: [
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isTapped = !_isTapped;
                        });
                      },
                      child: AnimatedSize(
                        duration: const Duration(seconds: 2),
                        curve: Curves.easeIn,
                        child: Image.network(
                          widget.book.image ?? AppConstants.noImage,
                          height: _isTapped ? 370 : 270,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 250),
                      child: Text(
                        widget.book.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: AppColors.greyColor2, fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              color: AppColors.greyColor,
                              width: 1,
                            ),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                IconButton(
                                  onPressed: _decrement,
                                  icon: const Icon(Icons.remove),
                                  iconSize: 30,
                                  color: Theme.of(context).primaryColor,
                                ),
                                const SizedBox(width: 20),
                                /* const VerticalDivider(
                                    width: 2, color: AppColors.greyColor2), */
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    '$_count',
                                    style: const TextStyle(
                                      color: AppColors.greyColor2,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                /*  const VerticalDivider(
                                    width: 2, color: AppColors.greyColor2), */
                                const SizedBox(width: 20),
                                IconButton(
                                  onPressed: _increment,
                                  icon: const Icon(Icons.add),
                                  iconSize: 30,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ]),
                        ),
                        Text(
                          S.current.price(widget.book.price),
                          style: const TextStyle(fontSize: 25, color: AppColors.greyColor2),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<CartBloc>(context).add(AddToCartEvent(
                          book: CartBookModel(
                            name: widget.book.name,
                            price: widget.book.price,
                            image: widget.book.thumbnail!,
                            quantity: _count,
                          ),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Theme.of(context).primaryColor,
                        fixedSize: const Size(348, 50),
                        textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text(S.current.addToCart),
                    ),
                    const SizedBox(height: 10),
                    OutlinedButton(
                      onPressed: () {
                        final FavouritesBookModel hiveBook = FavouritesBookModel(
                          name: widget.book.name,
                          price: widget.book.price,
                          image: widget.book.thumbnail!,
                        );

                        BlocProvider.of<FavouritesBloc>(context)
                            .add(AddToFavouritesEvent(book: hiveBook));
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size(348, 50),
                        side: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2,
                        ),
                        foregroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text(
                        S.current.addToFavourites,
                        style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (kIsWeb) const Flexible(child: SizedBox.shrink()),
          ],
        ),
      ),
    );
  }
}
