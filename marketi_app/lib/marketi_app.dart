import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/resources/app_strings.dart';
import 'package:marketi_app/core/theme/app_theme.dart';
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
