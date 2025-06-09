import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/resources/app_sizes.dart';
import '../../../../../core/resources/app_strings.dart';
import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/styles_manager.dart';
import '../../../../../core/theme/app_colors.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> socialIcons = [
      AssetsManager.iconGoogle,
      AssetsManager.iconApple,
      AssetsManager.iconFacebook,
    ];
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSizes.md),
      child: Column(
        spacing: AppSizes.md,
        children: [
          Text(
            AppStrings.orContinueWith,
            style: StylesManager.font12NavyRegular,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: AppSizes.sm,
            children: List.generate(
              socialIcons.length,
              (index) => Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.darkBlue900),
                ),
                child: SvgPicture.asset(
                  socialIcons[index],
                  height: 16.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
