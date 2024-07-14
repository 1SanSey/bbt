import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/domain/entities/order_entity.dart';
import 'package:bbt/features/presentation/bloc/orders_bloc/orders_bloc.dart';
import 'package:bbt/features/presentation/bloc/sidebar_visibility_bloc/sidebar_visibility_bloc.dart';
import 'package:bbt/features/presentation/navigation/navigation_manager.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class OrdersPage extends StatelessWidget {
  final PageController? pageController;
  final String name;
  const OrdersPage({super.key, required this.name, this.pageController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kIsWeb ? 512 : null,
      height: kIsWeb ? MediaQuery.sizeOf(context).height : null,
      child: Scaffold(
        appBar: kIsWeb
            ? null
            : AppBar(
                leading: IconButton(
                  onPressed: NavigationManager.instance.pop,
                  icon: const Icon(Icons.arrow_back),
                ),
                title: Text(name),
                centerTitle: true,
              ),
        body: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            List<OrderEntity> orders = [];
            state.mapOrNull(
              loaded: (value) {
                orders = value.orders;
              },
              loadedAll: (value) {
                orders = value.orders;
              },
            );

            return Column(
              children: [
                if (kIsWeb) ...[
                  Row(
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: const CircleBorder(),
                        onPressed: () => pageController!.jumpToPage(0),
                        minWidth: 36,
                        padding: const EdgeInsets.all(6),
                        child: const Icon(
                          Icons.close,
                          color: AppColors.greyColor2,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ],
                if (orders.isNotEmpty)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: SizedBox(
                        height: kIsWeb ? MediaQuery.sizeOf(context).height : null,
                        child: ListView.separated(
                          itemBuilder: (context, i) {
                            return ListTile(
                              title: GestureDetector(
                                onTap: () {
                                  if (kIsWeb) {
                                    context.read<SidebarVisibilityBloc>()
                                      ..add(OpenProfile(false))
                                      ..add(OpenOrderDetail(true, order: orders[i]));
                                  } else {
                                    NavigationManager.instance.goOrderDetailPage(orders[i]);
                                  }
                                },
                                child: Text(
                                  '${S.current.orderFrom} ${getDate(orders[i].dateOrder)}',
                                  style: const TextStyle(color: AppColors.greyColor2),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              color: Theme.of(context).primaryColorDark,
                              thickness: 1,
                            );
                          },
                          itemCount: orders.length,
                        ),
                      ),
                    ),
                  )
                else
                  const SizedBox.shrink(),
              ],
            );
          },
        ),
      ),
    );
  }

  String getDate(DateTime dateTime) {
    return DateFormat('dd.MM.y HH:mm', 'ru').format(dateTime);
  }
}
