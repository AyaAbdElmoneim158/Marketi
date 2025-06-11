import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../core/resources/app_sizes.dart';
import '../../core/resources/assets_manager.dart';
import '../../core/theme/app_colors.dart';
import '../auth/presentation/view/widgets/auth_app_bar.dart';
import '../home/presentation/view/home_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(title: "Cart", hasAction: true),
      //Todo: pagination.logic
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(
                type: "Products on Cart", //Todo: string
                showViewAll: false,
              ),
              ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 4),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ProductAtCart(),
                separatorBuilder: (context, index) => Gap(AppSizes.md),
                itemCount: 12,
              )
              // (),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductAtCart extends StatelessWidget {
  const ProductAtCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 18),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xB2B2CCFF), // #B2CCFFB2 with correct alpha
            offset: Offset(0, 0),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      child: Row(
        spacing: 8.w,
        children: [
          Flexible(
            flex: 4,
            child: Image.asset(AssetsManager.pampers),
          ),
          Flexible(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Pampers Swaddlers"),
                    Spacer(),
                    SvgPicture.asset(AssetsManager.heartIcon),
                  ],
                ),
                Text("84 Diapers"),
                Row(
                  children: [
                    Text("Price: 345,00 EGP"),
                    Spacer(),
                    Row(
                      spacing: 2.w,
                      children: [
                        SvgPicture.asset(AssetsManager.starIcon),
                        Text("4.9"),
                      ],
                    ),
                  ],
                ),
                Gap(AppSizes.sm),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 10.w,
                  children: [
                    SvgPicture.asset(AssetsManager.frame6161),
                    SvgPicture.asset(AssetsManager.frame6156),
                    SvgPicture.asset(AssetsManager.frame6162),
                  ],
                ),
              ],
            ),
          ),
        ],
      ), //pampers
    );
  }
}
