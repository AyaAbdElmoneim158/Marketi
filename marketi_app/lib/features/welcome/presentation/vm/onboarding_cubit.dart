import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/resources/extension_manager.dart';
import 'package:marketi_app/features/auth/presentation/view/login_screen.dart';
import 'package:marketi_app/features/welcome/data/models/onboarding_model.dart';
import 'package:marketi_app/features/welcome/presentation/vm/onboarding_states.dart';

import '../../../../core/api/end_points.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/utils/cache_helper.dart';

class OnboardingCubit extends Cubit<OnboardingStates> {
  OnboardingCubit() : super(OnboardingInitialState());
  static OnboardingCubit get(context) => BlocProvider.of(context);

  final List<OnboardingModel> onboardList = OnboardingModel.getOnboardList();
  final PageController controller = PageController();

  int _currentIndex = 0;
  bool _isLast = false;

  int get currentIndex => _currentIndex;
  bool get isLast => _isLast;
  void skipOnboarding(BuildContext context) async {
    try {
      await CacheHelper().saveData(key: StorageKeys.hasCompletedOnboarding, value: true);
      navigateToLogin(context);
    } catch (e) {
      print(e);
    }
  }

  Future<void> skipOnboarding2(BuildContext context) async {
    try {
      // Show loading indicator if the operation might take time
      final navigator = Navigator.of(context);

      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => const Center(child: CircularProgressIndicator()),
      );

      // Save onboarding completion status
      await CacheHelper().saveData(
        key: StorageKeys.hasCompletedOnboarding,
        value: true, // Should be true since they completed onboarding
      );

      // Close loading indicator
      navigator.pop();

      // Navigate to login
      navigateToLogin(context);
    } catch (e, stackTrace) {
      // Proper error logging
      debugPrint('Error skipping onboarding: $e');
      debugPrint(stackTrace.toString());

      // Close loading indicator if still open
      if (context.mounted) Navigator.of(context).pop();

      // Show error feedback to user
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to save settings. Please try again.'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }

      // Still navigate even if save fails
      if (context.mounted) navigateToLogin(context);
    }
  }

  void navigateToLogin(BuildContext context) {
    context.pushReplacementNamed(AppRoutes.loginRouter);
  }

  void handlePageChanged(int index) {
    _currentIndex = index;
    _isLast = _currentIndex == onboardList.length - 1;
    emit(OnboardingPageChangedState(_currentIndex, _isLast));
  }

  void handleNextButton(BuildContext context) {
    if (_isLast) {
      skipOnboarding(context);
    } else {
      jumpToPage(_currentIndex + 1);
    }
  }

  void jumpToPage(int index, {Duration duration = const Duration(milliseconds: 500), Curve curve = Curves.easeInOut}) {
    _currentIndex = index;
    _isLast = _currentIndex == onboardList.length - 1;
    controller.animateToPage(index, duration: duration, curve: curve);
    emit(OnboardingPageChangedState(_currentIndex, _isLast));
  }

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}
