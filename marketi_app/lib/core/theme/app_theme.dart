import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/theme/app_colors.dart';
import 'package:marketi_app/core/resources/app_strings.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: AppStrings.appFontName,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.white,
    ),

    textTheme: TextTheme(),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.lightBlue100, // 🔵 Global cursor color
      selectionColor: AppColors.lightBlue100.withOpacity(0.4), // optional
      selectionHandleColor: AppColors.lightBlue100, // optional
    ),
    inputDecorationTheme: InputDecorationTheme(
      //  InputBorder? errorBorder,
      // InputBorder? focusedBorder,
      // InputBorder? focusedErrorBorder,
      // InputBorder? disabledBorder,
      // InputBorder? enabledBorder,

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: AppColors.lightBlue100,
          width: 1.7,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: AppColors.lightBlue700,
          width: 1.7,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: AppColors.rect.withOpacity(0.70),
          width: 1.4,
        ),
      ),
      // focusedBorder ....
      fillColor: AppColors.white,
      filled: true,
      isDense: true,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 16,
      ),
      // suffixStyle: ,
      // prefixStyle: ,
      prefixIconColor: AppColors.darkBlue900,
      suffixIconColor: AppColors.darkBlue900,
      // focusColor: ,
      // labelStyle: ,
      // outlineBorder: ,

      hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.all(AppColors.white),
      fillColor: WidgetStateProperty.all(AppColors.lightBlue100),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.lightBlue100),
      foregroundColor: WidgetStateProperty.all(AppColors.white),
      elevation: WidgetStateProperty.all(0),
      padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 14, vertical: 16)),
      // all(EdgeInsets.all(20)),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
      textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
    )),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(AppColors.lightBlue100),
        backgroundColor: WidgetStatePropertyAll(AppColors.white),
        elevation: WidgetStatePropertyAll(0),
        // 🧽 Remove splash/overlay effects
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
        splashFactory: NoSplash.splashFactory,
      ),
    ),

    //! textField , text/elevate btn, appBar, scaffold
    //! cubit -> themeMode
  );

  // darkTheme
}
