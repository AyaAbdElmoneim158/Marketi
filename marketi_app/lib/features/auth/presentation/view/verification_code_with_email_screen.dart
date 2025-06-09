import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketi_app/core/resources/app_sizes.dart';
import 'package:marketi_app/core/resources/app_strings.dart';
import 'package:marketi_app/core/resources/assets_manager.dart';
import 'package:marketi_app/core/resources/styles_manager.dart';
import 'package:marketi_app/core/theme/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'widgets/auth_app_bar.dart';

////! refactor ... after and logic
class VerificationCodeWithEmailScreen extends StatelessWidget {
  const VerificationCodeWithEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(title: AppStrings.verificationCode),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Header
                SvgPicture.asset(
                  AssetsManager.illustrationVerificationCodeWithEmail,
                  height: 265.h,
                ),
                verticalSpace(AppSizes.xl),
                Text.rich(
                  TextSpan(
                    text: AppStrings.codeSentToEmail,
                    style: StylesManager.font16NavyMedium,
                    children: [
                      TextSpan(
                        text: AppStrings.emailExample,
                        style: StylesManager.font16LightBlue100Medium,
                      )
                    ],
                  ),
                ),
                verticalSpace(AppSizes.xl),
                // form
                Form(
                  // key: ,
                  child: Column(
                    spacing: AppSizes.md,
                    children: [
                      ////! handel -> LabeledTextFormField
                      //Pin_code...4
                      PinCodeTextField(
                        appContext: context,
                        length: 6,
                        // controller: ,// Todo: logic
                        keyboardType: TextInputType.number,
                        animationType: AnimationType.fade,
                        pinTheme: _buildPinTheme(context),
                        // blinkWhenObscuring: true,
                        // enableActiveFill: true,
                        animationDuration: const Duration(milliseconds: 200),
                        onChanged: (value) {
                          // if (mounted) {
                          //   setState(() => isOtpFilled = value.length == otpLength);
                          // }
                        },
                        onCompleted: (value) {
                          // if (mounted) {
                          //   print("OTP Completed: $value");
                          // }
                        },
                        // validator: (value) => isInvalidOtp(value) ? "Invalid OTP" : null,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {}, // Todo: logic
                          child: Text(AppStrings.verifyCode),
                        ),
                      ),
                      TextButton(
                        onPressed: () {}, // Todo: logic
                        child: Text(
                          AppStrings.resendCode,
                          style: StylesManager.font16NavySemiBold,
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

  PinTheme _buildPinTheme(BuildContext context) {
    return PinTheme(
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd.r),
      fieldHeight: 48.h,
      fieldWidth: 48.w,
      fieldOuterPadding: EdgeInsets.only(left: 8),
      inactiveColor: AppColors.lightBlue700,
      inactiveFillColor: AppColors.lightBlue700.withValues(alpha: 0.2),
      activeFillColor: AppColors.lightBlue100.withValues(alpha: 0.2),
      selectedFillColor: AppColors.lightBlue100.withValues(alpha: 0.2),
      activeColor: AppColors.lightBlue100.withValues(alpha: 0.8),
      selectedColor: AppColors.lightBlue100,
    );
  }
}
