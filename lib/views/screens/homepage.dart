import 'package:flutter/material.dart';
import 'package:my_storage/core/constant/app_colors.dart';
import 'package:my_storage/core/constant/app_styles.dart';
import 'package:my_storage/views/screens/add_product.dart';
import 'package:my_storage/views/widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              'المنتجات',
              style: AppStyles.styleInterBold30(context),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'اضغط على الزر + لإضافة المنتج',
          style: AppStyles.styleInter20(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddProduct(),
            ),
          );
        },
        backgroundColor: AppColors.primaryColor,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: AppColors.white,
          size: 50,
        ),
      ),
    );
  }
}
