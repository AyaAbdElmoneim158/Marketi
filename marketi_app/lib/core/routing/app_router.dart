import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/api/dio_consumer.dart';
import 'package:marketi_app/core/routing/app_routes.dart';
import 'package:marketi_app/core/screen/under_maintenance_screen.dart';
import 'package:marketi_app/features/auth/data/repo/auth_repo.dart';
import 'package:marketi_app/features/auth/presentation/view/login_screen.dart';
import 'package:marketi_app/features/home/presentation/view/home_screen.dart';
import 'package:marketi_app/features/welcome/presentation/view/onboarding_view.dart';
import 'package:marketi_app/features/welcome/presentation/view/splash_view.dart';

import '../../features/auth/presentation/view/signup_screen.dart';
import '../../features/auth/presentation/vm/auth_cubits.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    ////! final arguments = setting.arguments;
    ////! animation.routes;
    switch (setting.name) {
      case AppRoutes.splashRouter:
        return MaterialPageRoute(builder: (context) => SplashView());
      case AppRoutes.onboardingRouter:
        return MaterialPageRoute(builder: (context) => OnboardingView());
      case AppRoutes.homeRouter:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case AppRoutes.loginRouter:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SignInCubit(AuthRepo(api: DioConsumer(dio: Dio()))), ////! Di
            child: LoginScreen(),
          ),
        );
      case AppRoutes.signupRouter:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SignUpCubit(AuthRepo(api: DioConsumer(dio: Dio()))), ////! Di
            child: SignupScreen(),
          ),
        );
      default:
        return MaterialPageRoute(builder: (context) => UnderMaintenanceScreen());
    }
  }
}
