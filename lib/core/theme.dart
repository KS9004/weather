import 'package:flutter/material.dart';
import 'colors.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.background,
  cardColor: AppColors.cardBackground,
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: AppColors.textPrimary, fontSize: 18),
    bodyMedium: TextStyle(color: AppColors.textPrimary, fontSize: 16),
  )
);