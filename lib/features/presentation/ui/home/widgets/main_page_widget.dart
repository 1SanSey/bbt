import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/presentation/ui/home/widgets/books_list_widget.dart';
import 'package:bbt/features/presentation/ui/home/widgets/carousel_slider_widget.dart';
import 'package:bbt/features/presentation/ui/home/widgets/top_home_widget.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/material.dart';

class MainPageWidget extends StatelessWidget {
  const MainPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: CustomScrollView(slivers: [
        const CarouselSliderWidget(),
        const TopHomeWidget(),
        SliverPadding(
          padding: const EdgeInsets.only(top: 16, bottom: 8, right: 8, left: 8),
          sliver: SliverToBoxAdapter(
            child: Center(
              child: Text(
                S.current.popularBooks,
                style: const TextStyle(
                  fontFamily: 'Tahoma',
                  color: AppColors.greyColor2,
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        const BooksListWidget(),
      ]),
    );
  }
}
