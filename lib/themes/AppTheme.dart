import 'package:flutter/material.dart';
import 'package:lab3/themes/AppColors.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.seed),
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.mainBackground,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        surfaceTintColor: Colors.white,
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 20,
            letterSpacing: -0.70,
            color: AppColors.title,
            fontWeight: FontWeight.bold),
        displayMedium: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 14,
            letterSpacing: -0.42,
            color: AppColors.subtitle,
            fontWeight: FontWeight.bold),
        displaySmall: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            color: AppColors.title,
            letterSpacing: -0.40,
            fontWeight: FontWeight.normal),
        titleLarge: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 24,
            letterSpacing: -0.40,
            color: AppColors.title,
            fontWeight: FontWeight.bold),
        titleMedium: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 14,
            letterSpacing: -0.40,
            color: AppColors.title,
            fontWeight: FontWeight.normal),
        bodyMedium: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            color: AppColors.title,
            letterSpacing: -0.40,
            fontWeight: FontWeight.normal),
        bodySmall: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 14,
            color: AppColors.subtitle,
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
            letterSpacing: -0.40,
            fontWeight: FontWeight.normal),
        unselectedLabelStyle: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            letterSpacing: -0.40,
            fontWeight: FontWeight.normal),
      ));
}
