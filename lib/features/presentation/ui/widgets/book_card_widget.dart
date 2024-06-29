import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/data/models/cart_book_model/cart_book_model.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:bbt/features/presentation/bloc/navigation_web_cubit.dart';
import 'package:bbt/features/presentation/navigation/navigation_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookCard extends StatelessWidget {
  final BookEntity book;

  const BookCard({required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (kIsWeb) {
          context.read<NavigationWebCubit>().changePage(10, book: book);
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.network(
                  book.image ?? AppConstants.noImage,
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
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
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
                    BlocProvider.of<CartBloc>(context).add(AddToCartEvent(
                      book: CartBookModel(
                        name: book.name,
                        price: book.price,
                        image: book.image!,
                        quantity: 1,
                      ),
                    ));
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Theme.of(context).primaryColor,
                    size: 30,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
