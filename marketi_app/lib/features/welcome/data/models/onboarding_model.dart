import 'package:marketi_app/core/resources/assets_manager.dart';
import 'package:marketi_app/core/resources/app_strings.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String body;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.body,
  });

  List<OnboardingModel> onboarding = [];

  static List<OnboardingModel> getOnboardList() {
    var images = [
      AssetsManager.illustrationOnboarding1,
      AssetsManager.illustrationOnboarding2,
      AssetsManager.illustrationOnboarding3,
    ];

    const titles = [
      AppStrings.onboardingTitle1,
      AppStrings.onboardingTitle2,
      AppStrings.onboardingTitle3,
    ];

    const descriptions = [
      AppStrings.onboardingSubTitle1,
      AppStrings.onboardingSubTitle2,
      AppStrings.onboardingSubTitle3,
    ];

    return List.generate(images.length, (index) {
      return OnboardingModel(
        title: titles[index],
        body: descriptions[index],
        image: images[index],
      );
    });
  }
}
