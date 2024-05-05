import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_storage/core/constant/app_colors.dart';
import 'package:my_storage/core/constant/app_images.dart';
import 'package:my_storage/core/constant/app_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
            ),
            const SizedBox(height: 30),
            Text(
              'اهلا بك في تطبيق مخزني ',
              style: AppStyles.styleInter25(context),
            )
          ],
        ),
      ),
    );
  }
}
