import 'package:flutter/material.dart';
import 'package:my_storage/core/constant/app_colors.dart';
import 'package:my_storage/core/constant/app_styles.dart';

class CustomOnBoardingButton extends StatelessWidget {
  const CustomOnBoardingButton(
      {super.key, required this.onTap, required this.text});
  final Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(50),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: AppStyles.styleInterBold24(context),
        ),
      ),
    );
  }
}
