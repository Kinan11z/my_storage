import 'package:flutter/material.dart';
import 'package:my_storage/core/utils/size_config.dart';

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  // يختلف حسب نوع الجهاز
  double scaleFactor = getScaleFactor(context);
  // القيمة الجديدة للخط
  double responsiveFontSize = fontSize * scaleFactor;
  // حدود الخط
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  // للتأكد من ان الخط لا يتجاوز الحدود
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 2000;
  }
}
