import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/core/app_constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 10, bottom: 4, right: 8, left: 8),
      sliver: SliverToBoxAdapter(
        child: CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.8,
            autoPlayInterval: const Duration(seconds: 6),
            autoPlayAnimationDuration: const Duration(seconds: 1),
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: AppConstants.imagesList
              .map(
                (item) => Card(
                  margin: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  elevation: 6,
                  shadowColor: AppColors.greyColor2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                    child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
