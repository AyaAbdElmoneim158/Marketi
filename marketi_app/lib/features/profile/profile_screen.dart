import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/resources/app_sizes.dart';
import '../../core/resources/assets_manager.dart';
import '../auth/presentation/view/widgets/auth_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(title: "My Profile", hasAction: true), // cart||UserImage
      //Todo: pagination.logic
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(AppSizes.md),
              Image.asset(
                AssetsManager.illustrationSearchNotFound,
                height: 265.h,
              ),
              Gap(AppSizes.xl),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ListTile(
                  title: Text("Account Preferences"),
                  leading: SvgPicture.asset(AssetsManager.phoneIcon),
                  trailing: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Transform.rotate(
                      angle: 3.1416, // 180 degrees in radians (π)
                      child: SvgPicture.asset(AssetsManager.backIcon),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(),
                ),
                itemCount: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
