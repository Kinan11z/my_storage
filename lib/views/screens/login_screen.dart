import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_storage/core/constant/app_colors.dart';
import 'package:my_storage/core/constant/app_images.dart';
import 'package:my_storage/views/screens/homepage.dart';
import 'package:my_storage/views/screens/singup_screen.dart';
import 'package:my_storage/views/widgets/custom_onboarding_button.dart';
import 'package:my_storage/views/widgets/custom_small_button.dart';
import 'package:my_storage/views/widgets/custom_text_form_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
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
            const SizedBox(
              height: 30.0,
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
                    hintText: "البريد الالكتروني",
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: width * 0.8,
                  child: const CustomTextFormField(
                    hintText: "كلمة المرور",
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  width: width * 0.8,
                  child: CustomOnBoardingButton(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    text: "تسجيل",
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  width: width * 0.8,
                  child: CustomSmallButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SingUp(),
                          ));
                    },
                    text: "انشاء حساب ",
                    backgroundColor: AppColors.buttonColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
