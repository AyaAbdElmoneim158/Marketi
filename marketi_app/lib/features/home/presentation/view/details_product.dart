import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/theme/app_colors.dart';

import '../../../../core/resources/app_sizes.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../auth/presentation/view/widgets/auth_app_bar.dart';

class DetailsProductScreen extends StatelessWidget {
  const DetailsProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(title: "Product Details", hasAction: true), // cart||UserImage
      //Todo: pagination.logic
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(AppSizes.md),
              Center(
                child: Image.asset(AssetsManager.pampers, height: 200.h),
              ),
              Gap(AppSizes.md),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: List.generate(
                    4,
                    (index) => GestureDetector(
                      onTap: () {
                        // setState(() {
                        //   selectedItem = index;
                        // });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        height: 56.h,
                        width: 56.w,
                        padding: EdgeInsets.all(8),
                        decoration:
                            // selectedItem != index? null:
                            BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.white,
                        ),
                        child: Image.asset(AssetsManager.pampers, fit: BoxFit.cover),
                      ),
                    ),
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (context) => Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0x80B2CCFF), // translucent blue shadow
                offset: Offset(0, -1), // shadow on top side
                blurRadius: 10,
                spreadRadius: 0,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: AppColors.bgBlue1500,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text("Free Shipping"),
                  Spacer(),
                  Row(
                    spacing: 2.w,
                    children: [
                      Row(
                        children: List.generate(5, (index) => SvgPicture.asset(AssetsManager.starIcon)),
                      ),
                      Text("(4.0)"),
                    ],
                  ),
                ],
              ),
              Gap(AppSizes.md),
              Text("Pampers Swaddlers"),
              Gap(AppSizes.md),
              Text("Product Value"),
              Gap(AppSizes.md),
              Text(
                  "Fear no leaks with new and improved Pampers Swaddlers Pampers Swaddlers helps prevent up to 100% of leaks, even blowouts Plus, Dual Leak-Guard Barriers at the legs help protect where leaks happen most With Swaddlers, you can rest assured that you have superior leak protection* while keeping baby’s skin healthy See more  "),
              Gap(AppSizes.md),
              Text("Select Size"),
              Gap(AppSizes.md),
              Row(
                spacing: 7.w,
                children: List.generate(
                  4,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    height: 48.h,
                    width: 48.w,
                    padding: EdgeInsets.all(8),
                    decoration:
                        // selectedItem != index? null:
                        BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white,
                    ),
                    child: Center(child: Text("${index + 2}")),
                  ),
                ),
              ),
              Gap(AppSizes.md),
              Row(
                spacing: 8.w,
                children: [
                  Text("Price\n345.00 EGP"),
                  Expanded(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.white,
                      ),
                      child: Center(child: Text("Add to Cart")),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
