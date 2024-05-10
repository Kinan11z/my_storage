import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_storage/core/constant/app_colors.dart';
import 'package:my_storage/core/constant/app_images.dart';
import 'package:my_storage/views/screens/homepage.dart';
import 'package:my_storage/views/screens/login_screen.dart';
import 'package:my_storage/views/widgets/custom_onboarding_button.dart';
import 'package:my_storage/views/widgets/custom_small_button.dart';
import 'package:my_storage/views/widgets/custom_text_form_field.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height * 0.20,
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
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50.0,
                  ),
                  SizedBox(
                    width: width * 0.8,
                    child: const CustomTextFormField(
                      hintText: "user name",
                      suffixIcon: Icon(
                        Icons.person,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: width * 0.8,
                    child: const CustomTextFormField(
                      hintText: "البريد الالكتروني",
                      suffixIcon: Icon(
                        Icons.email,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: width * 0.8,
                    child: const CustomTextFormField(
                      hintText: "كلمة المرور",
                      suffixIcon: Icon(
                        Icons.lock_outline,
                        color: AppColors.primaryColor,
                      ),
                      prefIcon: Icon(
                        Icons.remove_red_eye,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: width * 0.8,
                    child: const CustomTextFormField(
                      hintText: "اكد كلمة المرور",
                      suffixIcon: Icon(
                        Icons.lock_outline,
                        color: AppColors.primaryColor,
                      ),
                      prefIcon: Icon(
                        Icons.remove_red_eye,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: width * 0.8,
                    child: CustomOnBoardingButton(
                      onTap: () {
                        // not replacement page
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      text: "انشاء حساب",
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: width * 0.8,
                    child: CustomSmallButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ));
                      },
                      text: "تسجيل الدخول",
                      backgroundColor: AppColors.buttonColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
