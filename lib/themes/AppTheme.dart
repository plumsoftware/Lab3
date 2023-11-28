import 'package:flutter/material.dart';
import 'package:lab3/themes/AppColors.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.seed),
      useMaterial3: true,
      primaryColorLight: AppColors.seed,
      primaryColorDark: AppColors.seed,
      scaffoldBackgroundColor: AppColors.mainBackground,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 20,
            height: 0.08,
            letterSpacing: -0.70,
            color: AppColors.title,
            fontWeight: FontWeight.bold),
        displayMedium: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 14,
            height: 0.08,
            letterSpacing: -0.42,
            color: AppColors.subtitle,
            fontWeight: FontWeight.bold),

        titleLarge: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 24,
            height: 0.08,
            letterSpacing: -0.40,
            color: AppColors.title,
            fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            height: 0.08,
            color: AppColors.title,
            letterSpacing: -0.40,
            fontWeight: FontWeight.normal),
        displaySmall: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            height: 0.08,
            letterSpacing: -0.40,
            fontWeight: FontWeight.normal),
      ),
      tabBarTheme: const TabBarTheme(
        indicatorColor: AppColors.tabBarIndicator,
        labelColor: AppColors.title,
        dividerColor: AppColors.tabBarDivider,
        unselectedLabelColor: AppColors.subtitle,
        indicatorSize: TabBarIndicatorSize.tab,
        labelPadding: EdgeInsets.all(8.0),
        labelStyle: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            height: 0.08,
            letterSpacing: -0.40,
            fontWeight: FontWeight.normal),
        unselectedLabelStyle: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            height: 0.08,
            letterSpacing: -0.40,
            fontWeight: FontWeight.normal),
      ));
}
