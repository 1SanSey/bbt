import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/domain/entities/cart_book_entity.dart';
import 'package:bbt/features/domain/entities/order_entity.dart';
import 'package:bbt/features/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:bbt/features/presentation/bloc/orders_bloc/send_order_bloc/send_order_bloc.dart';
import 'package:bbt/features/presentation/bloc/sidebar_visibility_bloc/sidebar_visibility_bloc.dart';
import 'package:bbt/features/presentation/ui/cart/widgets/cart_book_card.dart';
import 'package:bbt/features/presentation/ui/widgets/current_user_builder.dart';
import 'package:bbt/features/presentation/ui/widgets/error_text_widget.dart';
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
  @override
  void initState() {
    context.read<CartBloc>().add(ShowCartEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: SizedBox(
        width: kIsWeb ? 512 : null,
        height: kIsWeb ? MediaQuery.sizeOf(context).height : null,
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
                    padding: const EdgeInsets.symmetric(horizontal: kIsWeb ? 16 : 8),
                    child: CustomScrollView(slivers: [
                      if (kIsWeb)
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          sliver: SliverToBoxAdapter(
                            child: Row(
                              children: [
                                MaterialButton(
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  shape: const CircleBorder(),
                                  onPressed: () =>
                                      context.read<SidebarVisibilityBloc>().add(OpenCart(false)),
                                  minWidth: 36,
                                  padding: const EdgeInsets.all(6),
                                  child: const Icon(
                                    Icons.close,
                                    color: AppColors.greyColor2,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  S.current.cart,
                                  style: const TextStyle(
                                    fontFamily: 'Tahoma',
                                    color: AppColors.greyColor2,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return CartBookCard(
                                book: cartBooks[index],
                                index: index,
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
                                fixedSize: const Size(320, 50),
                                textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(S.current.sendOrder),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  )
                : ErrorTextWidget(errorMessage: S.current.cartEmpty);
          },
        ),
      ),
    );
  }
}
