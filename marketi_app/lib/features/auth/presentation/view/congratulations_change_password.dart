import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/resources/app_sizes.dart';
import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/styles_manager.dart';
import 'widgets/auth_app_bar.dart';

class CongratulationsChangePasswordScreen extends StatelessWidget {
  const CongratulationsChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            spacing: AppSizes.md,
            children: [
              Gap(AppSizes.xl),

              // Header
              SvgPicture.asset(
                AssetsManager.illustrationCongratulations,
                height: 265.h,
              ),
              Text(
                AppStrings.congratulations,
                textAlign: TextAlign.center,
                style: StylesManager.font24DarkBlue900Medium,
              ),
              Text(
                AppStrings.congratulationsPrompt,
                textAlign: TextAlign.center,
                style: StylesManager.font16NavyMedium,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {}, // Todo: logic
                  child: Text(AppStrings.login),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
