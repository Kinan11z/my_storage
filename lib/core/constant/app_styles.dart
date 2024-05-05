import 'package:flutter/material.dart';
import 'package:my_storage/core/constant/app_colors.dart';
import 'package:my_storage/core/functions/responsive_text.dart';

abstract class AppStyles {
  static TextStyle styleInter25(context) {
    return TextStyle(
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 25),
    );
  }

  static TextStyle styleInter20(context) {
    return TextStyle(
      color: AppColors.primaryColorWithOpacity,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
    );
  }

  static TextStyle styleInterBold20(context) {
    return TextStyle(
        color: AppColors.primaryColor,
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w500);
  }

  static TextStyle styleInterBold24(context) {
    return TextStyle(
        color: AppColors.white,
        fontSize: getResponsiveFontSize(
          context,
          fontSize: 24,
        ),
        fontWeight: FontWeight.w700);
  }

  static TextStyle styleInter24(context) {
    return TextStyle(
        color: AppColors.white,
        fontSize: getResponsiveFontSize(
          context,
          fontSize: 24,
        ),
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleInterBold30(context) {
    return TextStyle(
        color: AppColors.white,
        fontSize: getResponsiveFontSize(
          context,
          fontSize: 30,
        ),
        fontWeight: FontWeight.w700);
  }
}
