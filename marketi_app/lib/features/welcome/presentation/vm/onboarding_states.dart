class OnboardingStates {}

class OnboardingInitialState extends OnboardingStates {}

class OnboardingPageChangedState extends OnboardingStates {
  final int currentIndex;
  final bool isLast;

  OnboardingPageChangedState(this.currentIndex, this.isLast);
}
