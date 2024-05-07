import 'package:flutter/material.dart';
import 'package:my_storage/core/constant/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.icon,
      this.prefIcon,
      this.suffixIcon});
  final String hintText;

  final Icon? icon, prefIcon, suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        hintTextDirection: TextDirection.rtl,
        hintText: hintText,
        suffixIcon: suffixIcon,
        icon: icon,
        prefixIcon: prefIcon,
        hintStyle: const TextStyle(
          color: AppColors.white,
        ),
        fillColor: AppColors.buttonColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
