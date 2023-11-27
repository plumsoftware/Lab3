import 'package:flutter/material.dart';
import 'package:lab3/themes/AppColors.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColorLight: AppColors.seed,
      primaryColorDark: AppColors.seed,
      scaffoldBackgroundColor: AppColors.mainBackground,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'SFProText',
          fontSize: 16,
          height: 0.08,
          letterSpacing: -0.40,
        ),
        // ···
        titleLarge: TextStyle(
          fontFamily: 'SFProText',
          fontSize: 16,
          height: 0.08,
          letterSpacing: -0.40,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'SFProText',
          fontSize: 16,
          height: 0.08,
          letterSpacing: -0.40,
        ),
        displaySmall: TextStyle(
          fontFamily: 'SFProText',
          fontSize: 16,
          height: 0.08,
          letterSpacing: -0.40,
        ),
      ),
      tabBarTheme: const TabBarTheme(
        indicatorColor: AppColors.tabBarIndicator,
        labelColor: AppColors.title,
        dividerColor: AppColors.tabBarDivider,
        unselectedLabelColor: AppColors.subtitle,
        unselectedLabelStyle: TextStyle(
          fontFamily: 'SFProText',
          fontSize: 16,
          height: 0.08,
          letterSpacing: -0.40,
        ),
      ));
}
