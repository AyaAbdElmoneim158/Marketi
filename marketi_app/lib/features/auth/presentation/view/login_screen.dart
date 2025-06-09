import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketi_app/core/theme/app_colors.dart';
import 'package:marketi_app/core/resources/app_sizes.dart';
import 'package:marketi_app/core/resources/assets_manager.dart';
import 'package:marketi_app/core/resources/extension_manager.dart';
import 'package:marketi_app/features/auth/presentation/view/signup_screen.dart';
import 'package:marketi_app/features/home/presentation/vm/home_cubits.dart';

import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/styles_manager.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/utils/validator.dart';
import '../vm/auth_cubits.dart';
import '../vm/auth_states.dart';
import 'forgot_password_with_email_screen.dart';
import 'widgets/social_icons.dart';

////! refactor ... after and logic
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // SignInCubit signInCubit = SignInCubit.get(context); // BlocProvider.of<SignInCubit>(context);// Todo: logic
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultPadding),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // image
                Image.asset(AssetsManager.marketiLogo, height: 256.h),
                verticalSpace(AppSizes.xl), // Todo: gap
                // form
                Form(
                  // key: signInCubit.signInFormKey, // Todo: logic
                  child: Column(
                    spacing: AppSizes.md,
                    children: [
                      TextFormField(
                        // controller: signInCubit.signInEmailController, // Todo: logic
                        validator: (value) => TValidator.validateEmail(value),
                        decoration: InputDecoration(
                          hintText: AppStrings.usernameOrEmail,
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                      ),
                      TextFormField(
                        // controller: signInCubit.signInPasswordController, // Todo: logic
                        validator: (value) => TValidator.validatePassword(value), ////! file validation
                        decoration: InputDecoration(
                          hintText: AppStrings.password,
                          prefixIcon: Icon(Icons.lock_outlined),
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                    ],
                  ),
                ),

                verticalSpace(AppSizes.sm),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          // Todo: style_theme
                          value: true,
                          onChanged: (value) {}, // Todo: logic..whatdo
                        ),
                        Text(
                          AppStrings.rememberMe,
                          style: StylesManager.font12NavyRegular,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        context.push(ForgotPasswordWithEmailScreen());
                      },
                      child: Text(
                        AppStrings.forgotPassword_,
                        style: StylesManager.font12LightBlue100Medium,
                      ),
                    ),
                  ],
                ),
                verticalSpace(AppSizes.md),
                /* BlocListener<SignInCubit, AuthStates>(
                  listener: (context, state) {
                    ////! Use_switch
                    if (state is SignInLoading) {
                      debugPrint("SignInLoading");
                      context.showLoadingDialog(); //! edit at theme
                    } else if (state is SignInSuccess) {
                      ////! warningBottomSheet + nav to home
                      debugPrint("SignInSuccess");
                      context.pop();
                      context.showAlertDialog(
                        title: '',
                        content: state.signInModel.message!,
                        confirmText: 'OK',
                        onConfirm: () {
                          debugPrint("ok -> to homeRouter");
                          context.pushReplacementNamed(AppRoutes.homeRouter);
                        },
                      );

                      // context.showSnackBar(message: 'Saved successfully!');
                    } else if (state is SignInFailure) {
                      debugPrint("SignInFailure: {state.error.errorModel.message!}");
                      context.pop();
                      context.showAlertDialog(
                        title: '',
                        content: state.error.errorModel.message ?? "Failure",
                        confirmText: 'OK',
                      );
                    }
                    // pop
                  },
                  child: 
                  */ // Todo: logic
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {}, //=> SignInCubit.get(context).signIn(),// Todo: logic
                    child: Text(AppStrings.login),
                  ),
                ),
                // ),// Todo: logic

                verticalSpace(AppSizes.md), // Todo: gap

                ////! Hidden .... api_not_work
                SocialIcons(),
                verticalSpace(AppSizes.md), // Todo: gap

                GestureDetector(
                  onTap: () {
                    context.push(SignupScreen());
                  },
                  child: Text.rich(
                    TextSpan(
                      text: AppStrings.registerPrompt,
                      style: StylesManager.font12NavyRegular,
                      children: [
                        TextSpan(
                          text: AppStrings.register,
                          style: StylesManager.font12LightBlue100Regular,
                        )
                      ],
                    ),
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
