import 'package:flutter/material.dart';
import 'package:my_storage/core/constant/app_colors.dart';
import 'package:my_storage/views/screens/login_screen.dart';
import 'package:my_storage/views/screens/singup_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topLeft,
          colors: [
            Color.fromRGBO(23, 107, 135, 0.8),
            Color.fromRGBO(0, 0, 0, 0),
            Color.fromRGBO(0, 0, 0, 0),
          ],
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: AppColors.primaryColor),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/acconte.png'),
            ),
            accountName: Text('Mahmoud'),
            accountEmail: Text('mahomd.ui@gmail.com'),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('تسجيل الخروج'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_box),
            title: const Text('انشاء حساب جديد'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SingUp(),
                  ));
            },
          )
        ],
      ),
    );
  }
}
