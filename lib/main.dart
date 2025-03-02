import 'package:flutter/material.dart';
import 'package:my_storage/core/constant/app_theme.dart';
import 'package:my_storage/views/screens/onboarding_screen.dart';

void main() {
  runApp(const MyStorage());
}

class MyStorage extends StatelessWidget {
  const MyStorage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnBoarding(),
      theme: appTheme,
    );
  }
}
