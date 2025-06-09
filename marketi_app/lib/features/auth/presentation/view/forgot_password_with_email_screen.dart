import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/resources/app_sizes.dart';
import 'package:marketi_app/core/resources/app_strings.dart';
import 'package:marketi_app/core/resources/assets_manager.dart';
import 'package:marketi_app/core/resources/styles_manager.dart';

import 'widgets/auth_app_bar.dart';
import 'widgets/labeled_text_form_field.dart';

////! refactor ... after and logic
class ForgotPasswordWithEmailScreen extends StatelessWidget {
  const ForgotPasswordWithEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(title: AppStrings.forgotPassword),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Header
                SvgPicture.asset(
                  AssetsManager.illustrationForgotPasswordWithEmail,
                  height: 256.h,
                ),
                Gap(AppSizes.xl),
                Text(
                  AppStrings.enterEmailInstruction,
                  textAlign: TextAlign.center,
                  style: StylesManager.font16NavyMedium,
                ),
                Gap(AppSizes.xl), // Todo: gap
                // form
                Form(
                  // key: ,
                  child: Column(
                    spacing: AppSizes.md,
                    children: [
                      LabeledTextFormField(
                        label: AppStrings.email,
                        hintText: AppStrings.emailExample,
                        prefixIcon: Icons.email_outlined,
                        // controller: , // Todo: logic
                        // validator: , // Todo: logic
                      ),
                      ////! handel -> LabeledTextFormField

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {}, // Todo: logic
                          child: Text(AppStrings.sendCode),
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
