import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/domain/entities/cart_book_entity.dart';
import 'package:bbt/features/domain/entities/favorites_book_entity.dart';
import 'package:bbt/features/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:bbt/features/presentation/ui/widgets/app_snack_bar.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritesBookCard extends StatelessWidget {
  final FavoritesBookEntity book;

  const FavouritesBookCard({required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: AppColors.greyColor),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 2),
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Image.network(book.image, height: 40),
                const SizedBox(width: 10),
                SizedBox(
                  width: kIsWeb && width > 900 ? null : width * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(book.name, style: Theme.of(context).textTheme.bodyLarge),
                      Text(
                        S.current.price(book.price),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              BlocProvider.of<CartBloc>(context).add(
                AddToCartEvent(
                  book: CartBookEntity(
                    name: book.name,
                    price: book.price,
                    image: book.image,
                    quantity: 1,
                  ),
                ),
              );
              AppSnackBar.showSnack(context, S.current.bookAddedToCart);
              if (!kIsWeb) {
                AppMetrica.reportEvent('add to cart');
              }
            },
            icon: Icon(Icons.shopping_cart, color: Theme.of(context).primaryColor, size: 27),
          ),
        ],
      ),
    );
  }
}
