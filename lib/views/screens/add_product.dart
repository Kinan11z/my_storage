import 'package:flutter/material.dart';
import 'package:my_storage/core/constant/app_colors.dart';
import 'package:my_storage/core/constant/app_styles.dart';
import 'package:my_storage/views/screens/products.dart';
import 'package:my_storage/views/widgets/custom_small_button.dart';
import 'package:my_storage/views/widgets/custom_text_form_field.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              'اضف منتج جديد',
              style: AppStyles.styleInterBold30(context),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              const SizedBox(height: 100),
              const SizedBox(
                height: 50,
                child: CustomTextFormField(
                  hintText: 'اسم المنتج',
                ),
              ),
              const SizedBox(height: 56),
              const SizedBox(
                height: 50,
                child: CustomTextFormField(
                  hintText: 'الكمية',
                ),
              ),
              const SizedBox(height: 56),
              const Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: CustomTextFormField(
                        hintText: 'المبيع',
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: CustomTextFormField(
                        hintText: 'الشراء',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 56),
              SizedBox(
                width: width * 0.5,
                child: CustomSmallButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductsPage(),
                      ),
                    );
                  },
                  text: 'إضافة',
                ),
              ),
              const SizedBox(height: 23),
              SizedBox(
                width: width * 0.5,
                child: CustomSmallButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  backgroundColor: AppColors.buttonColor,
                  textColor: AppColors.black,
                  text: 'إلغاء',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
