import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/presentation/bloc/navigation_web_cubit.dart';
import 'package:bbt/features/presentation/bloc/sidebar_visibility_bloc/sidebar_visibility_bloc.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeaderWidget extends StatelessWidget {
  final FocusNode focusNode;
  final void Function(String)? onChanged;

  const HeaderWidget({super.key, required this.focusNode, this.onChanged});

  @override
  Widget build(BuildContext context) {
    final sidebarVisibilityBloc = context.read<SidebarVisibilityBloc>();
    final navigationWebCubit = context.read<NavigationWebCubit>();
    final width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding:
          kIsWeb && width > 900 ? const EdgeInsets.all(16) : const EdgeInsets.fromLTRB(16, 8, 8, 8),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              style: const TextStyle(color: AppColors.greyColor2),
              cursorColor: focusNode.hasFocus
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).primaryColorDark,
              focusNode: focusNode,
              showCursor: true,
              textInputAction: TextInputAction.search,
              autocorrect: false,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: focusNode.hasFocus
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColorDark,
                ),
                filled: true,
                hintText: S.current.searchFromName,
                hintStyle: TextStyle(
                  color: focusNode.hasFocus
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColorDark,
                ),
                fillColor: AppColors.greyColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: AppColors.greyColor,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: focusNode.hasFocus
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).primaryColorDark,
                    width: 1,
                  ),
                ),
              ),
              onChanged: onChanged,
            ),
          ),
          if (kIsWeb && width > 900) ...[
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () => navigationWebCubit.changePage(13),
                    icon: const Icon(Icons.favorite),
                    iconSize: 40,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(width: 32),
                  IconButton(
                    onPressed: () => navigationWebCubit.changePage(14),
                    icon: const Icon(Icons.shopping_cart),
                    iconSize: 40,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(width: 128),
                  IconButton(
                    onPressed: () => sidebarVisibilityBloc.add(OpenProfile(true)),
                    icon: const Icon(Icons.account_circle),
                    iconSize: 46,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
