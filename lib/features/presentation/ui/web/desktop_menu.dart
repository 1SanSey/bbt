import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/presentation/ui/web/widgets/menu_items_column.dart';
import 'package:flutter/material.dart';

class DesktopMenu extends StatelessWidget {
  const DesktopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 256,
      height: MediaQuery.of(context).size.height,
      color: AppColors.primaryColorLight,
      child: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: MenuItemsColumn(
            currentIndex: 0,
          ),
        ),
      ),
    );
  }
}
