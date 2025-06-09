import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/resources/app_sizes.dart';
import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/styles_manager.dart';
import 'widgets/auth_app_bar.dart';
import 'widgets/labeled_text_form_field.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(title: AppStrings.createNewPassword),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset(
                  AssetsManager.illustrationCreateNewPassword,
                  height: 265.h,
                ),
                Gap(AppSizes.xl),
                Text(
                  AppStrings.newPasswordPrompt,
                  textAlign: TextAlign.center,
                  style: StylesManager.font16NavyMedium,
                ),
                Gap(AppSizes.xl),
                Form(
                  // key: ,
                  child: Column(
                    spacing: AppSizes.md,
                    children: [
                      LabeledTextFormField(
                        label: AppStrings.password,
                        hintText: AppStrings.password,
                        prefixIcon: Icons.lock, // Todo : down.icon
                        // suffixIcon: ,
                        // controller: , // Todo: logic
                        // validator: , // Todo: logic
                      ),
                      ////! handel -> LabeledTextFormField
                      LabeledTextFormField(
                        label: AppStrings.confirmPassword,
                        hintText: AppStrings.confirmPassword,
                        prefixIcon: Icons.lock, // Todo : down.icon
                        // suffixIcon: ,
                        // controller: , // Todo: logic
                        // validator: , // Todo: logic
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {}, // Todo: logic
                          child: Text(AppStrings.sendPassword),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
