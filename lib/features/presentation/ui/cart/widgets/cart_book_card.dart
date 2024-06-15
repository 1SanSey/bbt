import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/domain/entities/cart_book_entity.dart';
import 'package:bbt/features/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBookCard extends StatelessWidget {
  final CartBookEntity book;
  final int index;
  const CartBookCard({super.key, required this.book, required this.index});

  @override
  Widget build(BuildContext context) {
    void increment(int index, int value) {
      final newValue = value + 1;
      context.read<CartBloc>().add(ChangeQuantityCartEvent(index: index, value: newValue));
    }

    void decrement(int index, int value) {
      final newValue = value > 1 ? value - 1 : value;
      context.read<CartBloc>().add(ChangeQuantityCartEvent(index: index, value: newValue));
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: AppColors.greyColor),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 2),
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Image.network(
              book.image,
              height: 40,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w400, fontSize: 17),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text(
                      S.current.price(book.price),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => decrement(index, book.quantity),
                          icon: const Icon(Icons.remove),
                          iconSize: 20,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          '${book.quantity}',
                          style: const TextStyle(
                            color: AppColors.greyColor2,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        IconButton(
                          onPressed: () => increment(index, book.quantity),
                          icon: const Icon(Icons.add),
                          iconSize: 20,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () =>
                          context.read<CartBloc>().add(RemoveFromCartEvent(index: index)),
                      icon: const Icon(Icons.delete),
                      iconSize: 20,
                      color: Theme.of(context).primaryColor,
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
