import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/domain/entities/order_entity.dart';
import 'package:bbt/features/presentation/bloc/get_user_bloc/get_user_bloc.dart';
import 'package:bbt/features/presentation/navigation/navigation_manager.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class OrderDetailPage extends StatefulWidget {
  final OrderEntity order;
  final PageController? pageController;

  const OrderDetailPage({super.key, required this.order, this.pageController});

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  void initState() {
    context.read<GetUserBloc>().add(GetUserEvent.fetch(widget.order.userId));
    super.initState();
  }

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
                title: Text(S.current.orderStructure),
                centerTitle: true,
              ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      onPressed: () => widget.pageController!.jumpToPage(0),
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
                      S.current.orderStructure,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ],
              ListTile(
                title: BlocBuilder<GetUserBloc, GetUserState>(
                  builder: (context, state) {
                    return state.when(
                      empty: () => const SizedBox.shrink(),
                      loading: () => const SizedBox.shrink(),
                      error: (_) => const SizedBox.shrink(),
                      loaded: (user) {
                        return Text(
                          '${user.displayName}\n${user.email}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            color: AppColors.greyColor2,
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 5),
              ListTile(
                title: Text(
                  '${S.current.orderDate}${getDate(widget.order.dateOrder)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: AppColors.greyColor2,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              ListTile(
                title: Text(
                  S.current.orderSum(widget.order.sumOrder),
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: AppColors.greyColor2,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ListTile(
                title: Text(
                  '${S.current.orderStructure}:',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: AppColors.greyColor2,
                  ),
                ),
              ),
              ...getBooksOrder(context),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> getBooksOrder(BuildContext context) {
    final List<Widget> listBooks = [];
    for (final item in widget.order.books.entries) {
      listBooks
        ..add(ListTile(
          title: Text(
            item.key,
            style: const TextStyle(color: AppColors.greyColor2),
          ),
          trailing: Text(item.value.toString()),
        ))
        ..add(Divider(
          color: Theme.of(context).primaryColorDark,
          thickness: 1,
        ));
    }

    return listBooks;
  }

  String getDate(DateTime dateTime) {
    return DateFormat('dd.MM.y HH:mm', 'ru').format(dateTime);
  }
}
