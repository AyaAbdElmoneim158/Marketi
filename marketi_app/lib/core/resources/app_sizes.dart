import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSizes {
  AppSizes._();
  static double xs = 4.0.w;
  static double sm = 8.0.w;
  static double md = 16.0.w;
  static double lg = 24.0.w;
  static double xl = 32.0.w;

  static double iconXs = 12.0.w;
  static double iconSm = 16.0.w;
  static double iconMd = 24.0.w;
  static double iconLg = 32.0.w;

  static double defaultSpace = 24.0.w;
  static double spaceBtwItems = 16.0.w;
  static double spaceBtwSections = 32.0.w;
  static double defaultPadding = 14.0.w;
  static double appBarHight = 56.0.h;

  static double borderRadiusSm = 4.0.w;
  static double borderRadiusMd = 8.0.w;
  static double borderRadiusLg = 12.0.w;
}

SizedBox verticalSpace(double height) => SizedBox(height: height.h);

SizedBox horizontalSpace(double width) => SizedBox(width: width.w);
