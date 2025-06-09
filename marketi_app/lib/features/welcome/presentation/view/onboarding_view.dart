import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi_app/core/theme/app_colors.dart';
import 'package:marketi_app/core/resources/app_sizes.dart';
import 'package:marketi_app/core/resources/app_strings.dart';
import 'package:marketi_app/features/welcome/data/models/onboarding_model.dart';
import 'package:marketi_app/features/welcome/presentation/vm/onboarding_cubit.dart';
import 'package:marketi_app/features/welcome/presentation/vm/onboarding_states.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: Scaffold(
        //! septate_AppBar
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Builder(builder: (innerContext) {
              return TextButton(
                onPressed: () => innerContext.read<OnboardingCubit>().skipOnboarding(innerContext),
                child: Text(
                  AppStrings.skip,
                  style: TextStyle(
                    // Todo: style
                    color: AppColors.lightBlue100,
                    fontSize: 16.sp,
                  ),
                ),
              );
            }),
          ],
        ),
        body: const _OnboardingContent(),
      ),
    );
  }
}

class _OnboardingContent extends StatelessWidget {
  const _OnboardingContent();

  @override
  Widget build(BuildContext context) {
    final cubit = OnboardingCubit.get(context);

    return BlocBuilder<OnboardingCubit, OnboardingStates>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: cubit.handlePageChanged,
                controller: cubit.controller,
                itemCount: cubit.onboardList.length,
                itemBuilder: (context, index) {
                  return _OnboardingPageItem(
                    item: cubit.onboardList[index],
                    cubit: cubit,
                  );
                },
              ),
            ),
            _NavigationControls(cubit: cubit),
          ],
        );
      },
    );
  }
}

class _OnboardingPageItem extends StatelessWidget {
  final OnboardingModel item;
  final OnboardingCubit cubit;

  const _OnboardingPageItem({
    required this.item,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(height: AppSizes.xl.h), // Todo: gap
              SvgPicture.asset(item.image, height: 256.h),
              SizedBox(height: AppSizes.md.h), // Todo: gap
              SmoothPageIndicator(
                controller: cubit.controller,
                count: cubit.onboardList.length,
                onDotClicked: cubit.jumpToPage,
                effect: WormEffect(
                  // Todo: style
                  dotColor: AppColors.lightBlue700,
                  activeDotColor: AppColors.darkBlue900,
                  dotHeight: 8.h,
                  dotWidth: 8.w,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  // Todo: style
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkBlue900,
                ),
              ),
              SizedBox(height: AppSizes.sm.h), // Todo: gap
              Text(
                item.body,
                textAlign: TextAlign.center,
                style: TextStyle(
                  // Todo: style
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darkBlue900,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavigationControls extends StatelessWidget {
  final OnboardingCubit cubit;

  const _NavigationControls({required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultPadding),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => cubit.handleNextButton(context),
          style: ElevatedButton.styleFrom(
            // Todo: style
            backgroundColor: AppColors.lightBlue100,
            foregroundColor: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.r),
            ),
            padding: EdgeInsets.symmetric(vertical: 12.h),
          ),
          child: Text(
            cubit.isLast ? AppStrings.getStarted : AppStrings.next,
          ),
        ),
      ),
    );
  }
}
