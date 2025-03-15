import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/data/models/cart_book_model/cart_book_model.dart';
import 'package:bbt/features/data/models/favourites_book_model/favourites_book_model.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/presentation/bloc/book_detail_bloc/book_detail_bloc.dart';
import 'package:bbt/features/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:bbt/features/presentation/bloc/favourites_bloc/favourites_bloc.dart';
import 'package:bbt/features/presentation/navigation/routes.dart';
import 'package:bbt/features/presentation/ui/web/widgets/on_hover.dart';
import 'package:bbt/features/presentation/ui/widgets/app_snack_bar.dart';
import 'package:bbt/features/presentation/ui/widgets/current_user_builder.dart';
import 'package:bbt/features/presentation/ui/widgets/loading_indicator.dart';
import 'package:bbt/features/presentation/ui/widgets/pull_to_refresh_loader.dart';
import 'package:bbt/features/presentation/ui/widgets/web_wrapper.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:bbt/utils/pull_to_refresh_flutter3/src/smart_refresher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookDetailPage extends StatefulWidget {
  final BookEntity? book;
  final int id;

  const BookDetailPage({super.key, required this.book, required this.id});

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  late int _count;
  late bool _isTapped;
  late final RefreshController _refreshController;
  BookEntity? _book;

  @override
  void initState() {
    if (widget.book != null) {
      _book = widget.book;
    } else {
      context.read<BookDetailBloc>().add(FetchBookDetailEvent(id: widget.id));
    }
    if (!kIsWeb) {
      AppMetrica.reportEvent('book detail ${widget.id}');
    }
    _refreshController = RefreshController(initialRefresh: false);
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
    final width = MediaQuery.sizeOf(context).width;

    Widget buildBookDetail() {
      return PullToRefreshLoader(
        refreshController: _refreshController,
        distance: 100,
        onRefresh: () => context.read<BookDetailBloc>().add(FetchBookDetailEvent(id: widget.id)),
        child: BlocConsumer<BookDetailBloc, BookDetailState>(
          listener: (context, state) => _listenBloc(state),
          builder: (context, state) {
            if (widget.book != null) {
              _book = widget.book;
            } else if (state is BookDetailLoaded) {
              _book = state.book;
            }

            return _book != null
                ? Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    leading:
                        kIsWeb && width > 900
                            ? MaterialButton(
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              shape: const CircleBorder(),
                              onPressed:
                                  () =>
                                      context.canPop()
                                          ? context.pop()
                                          : context.goNamed(Routes.homePage),
                              minWidth: 36,
                              padding: const EdgeInsets.all(6),
                              child: const Icon(Icons.arrow_back, color: AppColors.greyColor2),
                            )
                            : IconButton(
                              onPressed:
                                  () => kIsWeb ? context.goNamed(Routes.homePage) : context.pop(),
                              icon: const Icon(Icons.arrow_back),
                            ),
                    title: kIsWeb && width > 900 ? null : Text(_book!.name),
                    centerTitle: true,
                    backgroundColor: kIsWeb && width > 900 ? Colors.white : null,
                  ),
                  body: SafeArea(
                    child: Row(
                      children: [
                        Flexible(
                          child: SingleChildScrollView(
                            child: CurrentUserBuilder(
                              builder: (user) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _isTapped = !_isTapped;
                                            });
                                          },
                                          child: OnHover(
                                            builder: (isHovered) {
                                              return AnimatedSize(
                                                duration: const Duration(seconds: 2),
                                                curve: Curves.easeIn,
                                                child: Image.network(
                                                  _book!.image ?? AppConstants.noImage,
                                                  height: _isTapped ? 370 : 270,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        ConstrainedBox(
                                          constraints: const BoxConstraints(maxWidth: 250),
                                          child: Text(
                                            _book!.name,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: AppColors.greyColor2,
                                              fontSize: 18,
                                            ),
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
                                                  Container(
                                                    padding: const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                    ),
                                                    child: Text(
                                                      '$_count',
                                                      style: const TextStyle(
                                                        color: AppColors.greyColor2,
                                                        fontSize: 24,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 20),
                                                  IconButton(
                                                    onPressed: _increment,
                                                    icon: const Icon(Icons.add),
                                                    iconSize: 30,
                                                    color: Theme.of(context).primaryColor,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              S.current.price(_book!.price),
                                              style: const TextStyle(
                                                fontSize: 25,
                                                color: AppColors.greyColor2,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        ElevatedButton(
                                          onPressed: () {
                                            if (user.isEmpty) {
                                              AppSnackBar.showSnack(
                                                context,
                                                S.current.authNeedAddToCart,
                                              );
                                            } else {
                                              BlocProvider.of<CartBloc>(context).add(
                                                AddToCartEvent(
                                                  book: CartBookModel(
                                                    name: _book!.name,
                                                    price: _book!.price,
                                                    image: _book!.thumbnail!,
                                                    quantity: _count,
                                                  ),
                                                ),
                                              );
                                              AppSnackBar.showSnack(
                                                context,
                                                S.current.bookAddedToCart,
                                              );
                                              if (!kIsWeb) {
                                                AppMetrica.reportEvent('add to cart ${widget.id}');
                                              }
                                            }
                                          },
                                          style: ElevatedButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            backgroundColor: Theme.of(context).primaryColor,
                                            fixedSize: const Size(370, 50),
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Text(S.current.addToCart),
                                        ),
                                        const SizedBox(height: 10),
                                        OutlinedButton(
                                          onPressed: () {
                                            if (user.isEmpty) {
                                              AppSnackBar.showSnack(
                                                context,
                                                S.current.authNeedAddToFavourites,
                                              );
                                            } else {
                                              final FavouritesBookModel bookForDb =
                                                  FavouritesBookModel(
                                                    name: _book!.name,
                                                    price: _book!.price,
                                                    image: _book!.thumbnail!,
                                                  );

                                              BlocProvider.of<FavouritesBloc>(
                                                context,
                                              ).add(AddToFavouritesEvent(book: bookForDb));
                                              AppSnackBar.showSnack(
                                                context,
                                                S.current.bookAddedToFavourites,
                                              );
                                              if (!kIsWeb) {
                                                AppMetrica.reportEvent(
                                                  'add to favourites ${widget.id}',
                                                );
                                              }
                                            }
                                          },
                                          style: OutlinedButton.styleFrom(
                                            fixedSize: const Size(370, 50),
                                            side: BorderSide(
                                              color: Theme.of(context).primaryColor,
                                              width: 2,
                                            ),
                                            foregroundColor: Colors.transparent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Text(
                                            S.current.addToFavourites,
                                            style: TextStyle(
                                              color: Theme.of(context).primaryColor,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (width <= 900)
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(14, 28, 14, 32),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              S.current.quantity(_book!.quantity),
                                              style: const TextStyle(
                                                color: AppColors.greyColor2,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              _book!.description ?? '',
                                              style: const TextStyle(
                                                color: AppColors.greyColor2,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                        if (kIsWeb && width > 900)
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Text(
                                _book!.description ?? '',
                                style: const TextStyle(color: AppColors.greyColor2, fontSize: 16),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                )
                : const Center(child: LoadingIndicator());
          },
        ),
      );
    }

    return kIsWeb && width > 900 ? WebWrapper(child: buildBookDetail()) : buildBookDetail();
  }

  // Функция управляет лоадером pull to refresh.
  Future<void> _listenBloc(BookDetailState state) async {
    if (state is BookDetailLoading && _refreshController.isRefresh) {
      await _refreshController.requestLoading();
    } else if (state is BookDetailLoaded || state is BookDetailError) {
      _refreshController.refreshCompleted();
    }
  }
}
