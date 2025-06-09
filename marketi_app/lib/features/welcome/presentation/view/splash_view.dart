import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi_app/core/api/end_points.dart';
import 'package:marketi_app/core/resources/assets_manager.dart';
import 'package:marketi_app/core/routing/app_routes.dart';
import 'package:marketi_app/core/theme/app_colors.dart';
import 'package:marketi_app/core/utils/cache_helper.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  /*
   Todo: logic
  late final Timer _timer;
  final _splashDuration = const Duration(seconds: 3);

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    _timer = Timer(_splashDuration, () async {
      try {
        final shouldShow = await shouldShowOnboarding();
        _navigateToNextScreen(shouldShow);
      } catch (e) {
        debugPrint('Error during initialization: $e');
        _navigateToNextScreen(true);
      }
    });
  }

  Future<bool> shouldShowOnboarding() async {
    try {
      final hasCompleted = CacheHelper().getData(
        key: StorageKeys.hasCompletedOnboarding,
      );
      return hasCompleted != true;
    } catch (e) {
      debugPrint('Error reading onboarding status: $e');
      return true; // Default to showing onboarding if error occurs
    }
  }

  void _navigateToNextScreen(bool showOnboarding) {
    final token = CacheHelper().getData(key: StorageKeys.token);

    Navigator.pushReplacementNamed(
      context,
      showOnboarding
          ? AppRoutes.onboardingRouter
          : token == null
              ? AppRoutes.loginRouter
              : AppRoutes.homeRouter,
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Image.asset(
          AssetsManager.marketiLogo,
          height: 256.h,
          width: 256.w,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
