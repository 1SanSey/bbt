import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/presentation/ui/web/widgets/on_hover.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final (String, String, String) item;
  final Duration duration = const Duration(milliseconds: 250);
  final bool isActive;
  const MenuItem({
    Key? key,
    required this.item,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: isActive ? AppColors.secondaryColorLight : Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: OnHover(builder: (isHovered) {
          return Text(
            item.$1,
            style: TextStyle(
              color: isHovered ? Colors.white70 : Colors.white,
              fontWeight: FontWeight.w700,
            ),
          );
        }),
      ),
    );
  }
}
