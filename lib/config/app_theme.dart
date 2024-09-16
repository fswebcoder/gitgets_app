import 'package:flutter/material.dart';
import 'package:widgets_app/config/app_colors.dart';

class AppTheme {
    ThemeData theme(){
      return ThemeData(
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryColor
        ),
      );
    }
}