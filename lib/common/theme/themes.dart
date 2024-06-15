import 'package:bbt/common/theme/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() => ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primaryColorLight,
        foregroundColor: Colors.white,
      ),
      primaryColor: AppColors.primaryColorLight,
      primaryColorDark: AppColors.greyColor2,
      primaryColorLight: AppColors.secondaryColorLight,
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontFamily: 'Arial',
          fontSize: 20,
          color: AppColors.greyColor2,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Arial',
          color: AppColors.greyColor2,
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Arial',
          color: AppColors.greyColor2,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontFamily: 'Arial',
          color: AppColors.greyColor2,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
    );

ThemeData darkTheme() => ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      primaryColorDark: AppColors.greyColor2,
      primaryColorLight: AppColors.greyColor,
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontFamily: 'Arial',
          fontSize: 20,
          color: AppColors.greyColor2,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Arial',
          color: AppColors.greyColor2,
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Arial',
          color: AppColors.greyColor2,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontFamily: 'Arial',
          color: AppColors.greyColor2,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      scaffoldBackgroundColor: AppColors.greyColor,
    );
