import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';

class StylesManager {
  StylesManager._();
  static TextStyle font24WhiteSemiBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlue900,
  );

  static TextStyle font12NavyRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.navy,
  );

  static TextStyle font12LightBlue100Medium = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.lightBlue100,
  );

  static TextStyle font12LightBlue100Regular = font12NavyRegular.copyWith(color: AppColors.lightBlue100);
  static TextStyle font16NavyMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.navy,
  );
  static TextStyle font16LightBlue100Medium = font16NavyMedium.copyWith(color: AppColors.lightBlue100);
  static TextStyle font16NavySemiBold = font16NavyMedium.copyWith(fontWeight: FontWeight.w600);

  static TextStyle font12DarkBlueMedium = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlue900,
  );

  static TextStyle font24DarkBlue900Medium = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlue900,
  );

  //   TextStyle(
  //   fontSize: 12.sp,
  //   fontWeight: FontWeight.w400,
  //   color: AppColors.navy,
  // );
  /*   static TextStyle font12NavyRegular = TextStyle(
    fontSize: .sp,
    fontWeight: FontWeight.w00,
    color: AppColors.,
  );*/
}
