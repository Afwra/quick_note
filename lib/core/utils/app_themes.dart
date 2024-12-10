import 'package:flutter/material.dart';
import 'package:quick_note/core/utils/app_colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
  );
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: const Color(0xff181C14),
  );
}
