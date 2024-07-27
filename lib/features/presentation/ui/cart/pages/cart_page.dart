import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/domain/entities/cart_book_entity.dart';
import 'package:bbt/features/domain/entities/order_entity.dart';
import 'package:bbt/features/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:bbt/features/presentation/bloc/orders_bloc/send_order_bloc/send_order_bloc.dart';
import 'package:bbt/features/presentation/ui/cart/widgets/cart_book_card.dart';
import 'package:bbt/features/presentation/ui/widgets/current_user_builder.dart';
import 'package:bbt/features/presentation/ui/widgets/error_text_widget.dart';
import 'package:bbt/features/presentation/ui/widgets/header_widget.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late final FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    context.read<CartBloc>().add(ShowCartEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          List<CartBookEntity> cartBooks = [];
          int totalSum = 0;
          final Map<String, dynamic> orderBooks = {};

          if (state is ShowCartState) {
            cartBooks = state.books;
            totalSum = state.totalSum;
            for (final value in cartBooks) {
              orderBooks.addAll({value.name: value.quantity});
            }
          }

          return cartBooks.isNotEmpty
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: kIsWeb && width > 900 ? 16 : 8),
                  child: CustomScrollView(slivers: [
                    if (kIsWeb && width > 900) ...[
                      SliverToBoxAdapter(child: HeaderWidget(focusNode: _focusNode)),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        sliver: SliverToBoxAdapter(
                          child: Text(
                            S.current.cart,
                            style: const TextStyle(
                              fontFamily: 'Tahoma',
                              color: AppColors.greyColor2,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return Row(
                              children: [
                                Flexible(
                                  child: CartBookCard(
                                    book: cartBooks[index],
                                    index: index,
                                  ),
                                ),
                                if (kIsWeb && width > 900) const Flexible(child: SizedBox.shrink()),
                              ],
                            );
                          },
                          childCount: cartBooks.length,
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          S.current.totalSum(totalSum),
                          style: const TextStyle(
                            color: AppColors.greyColor2,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    CurrentUserBuilder(
                      builder: (user) => SliverToBoxAdapter(
                        child: Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 48),
                                child: ElevatedButton(
                                  onPressed: () {
                                    context
                                      ..read<SendOrderBloc>().add(SendOrderEvent.send(
                                        order: OrderEntity(
                                          userId: user.uid,
                                          dateOrder: DateTime.now(),
                                          sumOrder: totalSum,
                                          books: orderBooks,
                                        ),
                                      ))
                                      ..read<CartBloc>().add(RemoveAllCartEvent());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Theme.of(context).primaryColor,
                                    fixedSize: const Size(500, 50),
                                    textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(S.current.sendOrder),
                                ),
                              ),
                            ),
                            if (kIsWeb && width > 900) const Flexible(child: SizedBox.shrink()),
                          ],
                        ),
                      ),
                    ),
                  ]),
                )
              : ErrorTextWidget(errorMessage: S.current.cartEmpty);
        },
      ),
    );
  }
}
