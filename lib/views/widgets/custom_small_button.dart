import 'package:flutter/material.dart';
import 'package:my_storage/core/constant/app_colors.dart';
import 'package:my_storage/core/constant/app_styles.dart';

class CustomSmallButton extends StatelessWidget {
  const CustomSmallButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.backgroundColor,
      this.textColor});
  final Function()? onTap;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        height: 47,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: textColor == null
              ? AppStyles.styleInter24(context)
              : AppStyles.styleInter24(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
