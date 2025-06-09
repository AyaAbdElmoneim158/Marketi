import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/theme/app_colors.dart';
import 'package:marketi_app/core/resources/app_sizes.dart';
import 'package:marketi_app/core/resources/assets_manager.dart';
import 'package:marketi_app/core/resources/extension_manager.dart';
import 'package:marketi_app/core/utils/validator.dart';
import 'package:marketi_app/features/auth/presentation/view/widgets/social_icons.dart';

import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/styles_manager.dart';
import '../../../../core/routing/app_routes.dart';
import '../vm/auth_cubits.dart';
import '../vm/auth_states.dart';
import 'widgets/auth_footer_row_text.dart';

////! refactor ... after and logic
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // SignUpCubit signUpCubit = SignUpCubit.get(context); // BlocProvider.of<SignUpCubit>(context);// Todo: logic

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(AssetsManager.backIcon),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Header
                Image.asset(AssetsManager.marketiLogo, height: 160.h),
                verticalSpace(AppSizes.xl), // Todo: gap

                // form
                Form(
                  // key: signUpCubit.signUpFormKey, // Todo: logic
                  child: Column(
                    spacing: AppSizes.sm,
                    children: [
                      ////! handel -> LabeledTextFormField
                      TextFormField(
                        // controller: signUpCubit.signUpFullNameController,// Todo: logic
                        validator: (value) => TValidator.validateEmptyText(AppStrings.fullName, value),
                        decoration: InputDecoration(
                          hintText: AppStrings.fullName,
                          prefixIcon: Icon(Icons.person_add), // Todo : down.icon
                        ),
                      ),
                      TextFormField(
                        // controller: signUpCubit.signUpFullNameController,// Todo: logic
                        validator: (value) => TValidator.validateEmptyText(AppStrings.username, value),
                        decoration: InputDecoration(
                          hintText: AppStrings.username,
                          prefixIcon: Icon(Icons.person), // Todo : down.icon
                        ),
                      ),
                      TextFormField(
                        // controller: signUpCubit.signUpPhoneController,// Todo: logic
                        validator: (value) => TValidator.validatePhoneNumber(value),
                        decoration: InputDecoration(
                          hintText: AppStrings.phoneNumber,
                          prefixIcon: Icon(Icons.mobile_friendly_outlined), // Todo : down.icon
                        ),
                      ),
                      TextFormField(
                        // controller: signUpCubit.signUpEmailController, // Todo: logic
                        validator: (value) => TValidator.validateEmail(value),
                        decoration: InputDecoration(
                          hintText: AppStrings.emailExample,
                          prefixIcon: Icon(Icons.email_outlined), // Todo : down.icon
                        ),
                      ),
                      TextFormField(
                        // controller: signUpCubit.signUpPasswordController,// Todo: logic
                        validator: (value) => TValidator.validatePassword(value),
                        decoration: InputDecoration(
                          hintText: AppStrings.password,
                          prefixIcon: Icon(Icons.lock_outlined), // Todo : down.icon
                          suffixIcon: Icon(Icons.remove_red_eye), // Todo : down.icon // Todo: logic + ....
                        ),
                      ),
                      TextFormField(
                        // controller: signUpCubit.signUpConfirmPasswordController,// Todo: logic
                        validator: (value) => TValidator.validatePassword(value),
                        decoration: InputDecoration(
                          hintText: AppStrings.confirmPassword,
                          prefixIcon: Icon(Icons.lock_outlined), // Todo : down.icon
                          suffixIcon: Icon(Icons.remove_red_eye), // Todo : down.icon // Todo: logic + ....
                        ),
                      ),
                    ],
                  ),
                ),

                Gap(AppSizes.md),
                /* BlocListener<SignUpCubit, AuthStates>(
                  listener: (context, state) {
                    ////! Use_switch
                    if (state is SignUpLoading) {
                      debugPrint("SignUpLoading");
                      context.showLoadingDialog(); ////! edit at theme
                    } else if (state is SignUpSuccess) {
                      ////! warningBottomSheet + nav to home
                      debugPrint("SignUpSuccess");
                      context.pop();
                      context.showAlertDialog(
                        title: '',
                        content: state.signUpModel.message!,
                        confirmText: 'OK',
                        onConfirm: () {
                          debugPrint("ok -> to homeRouter");
                          context.pushReplacementNamed(AppRoutes.loginRouter);
                        },
                      );

                      // context.showSnackBar(message: 'Saved successfully!');
                    } else if (state is SignUpFailure) {
                      debugPrint("SignUpFailure: {state.error.errorModel.message!}");
                      context.pop();
                      context.showAlertDialog(
                        title: '',
                        content: state.error.errorModel.message ?? "Failure",
                        confirmText: 'OK',
                      );
                    } else if (state is NoInternetConnectionState) {
                      debugPrint("SignUpFailure: {state.error.errorModel.message!}");
                      context.pop();
                      context.showAlertDialog(
                        title: '',
                        content: "Failure, NoInternet Connection",
                        confirmText: 'OK',
                      );
                    } else {
                      context.pop();
                      context.showAlertDialog(
                        title: '',
                        content: "Failure, something....!",
                        confirmText: 'OK',
                      );
                    }
                    // pop
                  },
                  child:*/ // Todo: logic
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {}, // => signUpCubit.signUp(), // Todo: logic
                    child: Text(AppStrings.signUp),
                  ),
                ),
                // ), // Todo: logic

                SocialIcons(),
                AuthFooterRowText(), // todo AuthFooterRowText
              ],
            ),
          ),
        ),
      ),
    );
  }
}
