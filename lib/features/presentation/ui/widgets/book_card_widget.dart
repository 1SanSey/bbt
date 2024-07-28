import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/data/models/cart_book_model/cart_book_model.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:bbt/features/presentation/bloc/navigation_web_cubit.dart';
import 'package:bbt/features/presentation/navigation/navigation_manager.dart';
import 'package:bbt/features/presentation/ui/widgets/app_snack_bar.dart';
import 'package:bbt/features/presentation/ui/widgets/current_user_builder.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookCardWidget extends StatelessWidget {
  final BookEntity book;

  const BookCardWidget({required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return GestureDetector(
      onTap: () {
        if (kIsWeb && width > 900) {
          final state = context.read<NavigationWebCubit>().state;

          context.read<NavigationWebCubit>().changePage(12,
              previousIndex: state.previousIndex, queryCategory: state.queryCategory, book: book);
        } else {
          NavigationManager.instance.goBookDetailPage(book);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: AppColors.greyColor),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: CurrentUserBuilder(
          builder: (user) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.network(
                      book.thumbnail ?? AppConstants.noImage,
                      fit: BoxFit.fitHeight,
                      height: 180,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        book.name,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        '${book.price} ₽',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (user.isEmpty) {
                            AppSnackBar.showSnack(context, S.current.authNeedAddToCart);
                          } else {
                            BlocProvider.of<CartBloc>(context).add(
                              AddToCartEvent(
                                book: CartBookModel(
                                  name: book.name,
                                  price: book.price,
                                  image: book.thumbnail!,
                                  quantity: 1,
                                ),
                              ),
                            );
                          }
                        },
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Theme.of(context).primaryColor,
                          size: 30,
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
    );
  }
}
