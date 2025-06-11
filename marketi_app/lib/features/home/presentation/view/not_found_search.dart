import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/resources/app_sizes.dart';
import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/styles_manager.dart';
import '../../../auth/presentation/view/widgets/auth_app_bar.dart';
import 'home_screen.dart';

class NotFoundSearchScreen extends StatelessWidget {
  const NotFoundSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(hasAction: true),
      //Todo: pagination.logic
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchField(),
              Gap(AppSizes.xl),

              // Header
              Image.asset(
                AssetsManager.illustrationSearchNotFound,
                height: 265.h,
              ),
              Gap(AppSizes.xl),

              Text(
                "Oops Not Found!",
                textAlign: TextAlign.center,
                style: StylesManager.font24DarkBlue900Medium,
              ),
              Gap(AppSizes.lg),

              Text(
                "Check our big offers, fresh products\nand fill your cart with items",
                textAlign: TextAlign.center,
                style: StylesManager.font16NavyMedium,
              ),
              Gap(AppSizes.md),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {}, // Todo: logic
                  child: Text("Continue Shopping"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
