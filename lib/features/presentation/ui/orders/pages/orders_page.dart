import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/domain/entities/order_entity.dart';
import 'package:bbt/features/presentation/bloc/orders_bloc/orders_bloc.dart';
import 'package:bbt/features/presentation/navigation/navigation_manager.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class OrdersPage extends StatelessWidget {
  final String name;
  const OrdersPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

          return orders.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: ListView.separated(
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: GestureDetector(
                          onTap: () => NavigationManager.instance.goOrderDetailPage(orders[i]),
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
                )
              : const SizedBox.shrink();
        },
      ),
    );
  }

  String getDate(DateTime dateTime) {
    return DateFormat('dd.MM.y HH:mm', 'ru').format(dateTime);
  }
}
