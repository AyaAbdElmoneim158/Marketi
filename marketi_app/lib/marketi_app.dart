import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/resources/app_strings.dart';
import 'package:marketi_app/core/theme/app_theme.dart';
import 'package:marketi_app/core/routing/app_router.dart';
import 'package:marketi_app/core/routing/app_routes.dart';

import 'features/auth/presentation/view/congratulations_change_password.dart';
import 'features/auth/presentation/view/create_new_password.dart';
import 'features/auth/presentation/view/forgot_password_with_email_screen.dart';
import 'features/auth/presentation/view/login_screen.dart';
import 'features/auth/presentation/view/verification_code_with_email_screen.dart';
import 'features/welcome/presentation/view/onboarding_view.dart';
import 'features/welcome/presentation/view/splash_view.dart';
import 'root_app.dart';

class MarketiApp extends StatelessWidget {
  const MarketiApp({super.key});

  @override
  Widget build(BuildContext context) {
    ////! Device_preview
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        home: RootScreen(),
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.light,
        // onGenerateRoute: AppRouter.onGenerateRoute,
        // initialRoute: AppRoutes.splashRouter,
      ),
    );
  }
}
