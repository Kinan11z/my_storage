import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_storage/core/constant/app_colors.dart';
import 'package:my_storage/core/constant/app_images.dart';

class LogoStore extends StatelessWidget {
  const LogoStore({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.25,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 7,
            spreadRadius: 0.2,
            offset: Offset(0, 5),
            color: Color.fromARGB(60, 0, 0, 0)),
      ], color: AppColors.backgroundColor, shape: BoxShape.circle),
      child: Center(
        child: SvgPicture.asset(AppImages.store),
      ),
    );
  }
}
