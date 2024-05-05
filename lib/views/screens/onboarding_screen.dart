import 'package:flutter/material.dart';
import 'package:my_storage/core/constant/app_styles.dart';
import 'package:my_storage/views/screens/homepage.dart';
import 'package:my_storage/views/widgets/custom_onboarding_button.dart';
import 'package:my_storage/views/widgets/logo_store.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              const LogoStore(),
              const SizedBox(height: 30),
              Text(
                'يقدم لك تطبيق مخزني اضافة المنتجات او السلع  لتكون معك اين ماكنت  ',
                style: AppStyles.styleInter25(context),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              CustomOnBoardingButton(
                text: 'إبدا الان',
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 90)
            ],
          ),
        ),
      ),
    );
  }
}
