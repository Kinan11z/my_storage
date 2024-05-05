import 'package:flutter/material.dart';
import 'package:my_storage/core/constant/app_colors.dart';

ThemeData? appTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.backgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primaryColor,
    toolbarHeight: 98,
  ),
);
