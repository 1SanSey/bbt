import 'package:bbt/features/presentation/bloc/change_theme_bloc/change_theme_bloc.dart';
import 'package:bbt/features/presentation/ui/web/widgets/on_hover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        color: isActive ? Theme.of(context).primaryColorLight : Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: OnHover(builder: (isHovered) {
          return BlocBuilder<ChangeThemeBloc, ThemeState>(
            builder: (context, state) {
              return Text(
                item.$1,
                style: TextStyle(
                  color: isHovered
                      ? state.isDark
                          ? isActive
                              ? Colors.black54
                              : Colors.white70
                          : Colors.white70
                      : state.isDark && isActive
                          ? Colors.black
                          : Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
