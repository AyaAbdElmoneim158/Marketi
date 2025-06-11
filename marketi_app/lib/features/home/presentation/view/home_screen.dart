import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi_app/core/resources/extension_manager.dart';
import 'package:marketi_app/core/resources/styles_manager.dart';
import 'package:marketi_app/core/theme/app_colors.dart';
import 'package:marketi_app/features/home/presentation/view/view_all_screen.dart';

import '../../../../core/resources/assets_manager.dart';
import 'details_product.dart';
//Todo: logic
//Todo: string
//Todo: style
//Todo: gap
//Todo: Sizing

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 12,
          children: [
            UserImage(),
            Text("Hi Yousef !"), //Todo: style
          ],
        ),
        actions: [
          SvgPicture.asset(AssetsManager.bellIcon),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Search
              SearchField(),
              SizedBox(height: 16),
              // Banner...indector + swip
              Image.asset(
                AssetsManager.offer1,
                width: double.infinity,
                height: 120.h,
                fit: BoxFit.cover,
              ),
              // Popular Product
              SizedBox(height: 16),
              HomeHeader(
                type: "Popular Product", //Todo: string
                onTap: () {}, //Todo: logic
              ),
              SizedBox(
                height: 165.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 16.w,
                    children: List.generate(7, (index) => Product()).toList(),
                  ),
                ),
              ),
              // Category
              HomeHeader(
                type: "Category", //Todo: string
                onTap: () => context.push(ViewAllScreen()),
                //Todo: logic
              ),
              SizedBox(
                height: 100.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 16.w,
                    children: List.generate(7, (index) => Category()).toList(),
                  ),
                ),
              ),
              // Best for You
              HomeHeader(
                type: "Best for You", //Todo: string
                onTap: () {}, //Todo: logic
              ),
              SizedBox(
                height: 195.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 16.w,
                    children: List.generate(7, (index) => Product()).toList(),
                  ),
                ),
              ),
              // Brands
              HomeHeader(
                type: "Brands", //Todo: string
                onTap: () {}, //Todo: logic
              ),
              SizedBox(
                height: 100.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 16.w,
                    children: List.generate(7, (index) => Category()).toList(),
                  ),
                ),
              ),
              // Buy Again
              HomeHeader(
                type: "Buy Again", //Todo: string
                onTap: () {}, //Todo: logic
              ),
              SizedBox(
                height: 195.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 16.w,
                    children: List.generate(7, (index) => Product()).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(AssetsManager.searchIcon),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(AssetsManager.filterIcon),
          ),
          hintText: "What are you looking for ? ",
          // hintStyle:
        ),
      ),
    );
  }
}

class UserImage extends StatelessWidget {
  const UserImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: 22.w,
            backgroundColor: AppColors.lightBlue100,
          ),
          CircleAvatar(
            radius: 20.w,
            backgroundColor: AppColors.white,
          ),
          CircleAvatar(
            radius: 18.w,
            backgroundColor: AppColors.white,
            backgroundImage: AssetImage(AssetsManager.marketiLogo),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105.w,
      height: 96.h,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.white, border: Border.all(color: AppColors.rect.withOpacity(0.70))),
      child: Center(child: Image.asset(AssetsManager.smartwatch)),
    );
  }
}

class Product extends StatelessWidget {
  const Product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(DetailsProductScreen()),
      child: SizedBox(
        width: 160.w,
        height: 150.h,
        child: Stack(
          children: [
            Container(
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
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        // width: 152.w,
                        height: 96.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.lightBlue900,
                        ),
                        child: Center(child: Image.asset(AssetsManager.smartwatch)),
                      ),
                      Positioned(
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SvgPicture.asset(AssetsManager.rectangle3674),
                                Text("15% OFF"),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, right: 8),
                              child: SvgPicture.asset(AssetsManager.heartIcon),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Info
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("499 LE"),
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
                        Text("Smart Watch"),
                        // Container(
                        //   margin: EdgeInsets.only(top: 8.5.h),
                        //   padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.5.h),
                        //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: AppColors.white, border: Border.all(color: AppColors.lightBlue100)),
                        //   child: Center(child: Text("Add")),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  final void Function()? onTap;
  final String type;
  final bool showViewAll;

  const HomeHeader({
    super.key,
    required this.type,
    this.onTap,
    this.showViewAll = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 8),
      child: Row(
        children: [
          Text(
            type,
            style: StylesManager.font20DarkBlue900SemiBold,
          ),
          Spacer(),
          !showViewAll
              ? SizedBox.shrink()
              : GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "View all",
                    style: StylesManager.font16LightBlue100Medium,
                  ),
                ),
        ],
      ),
    );
  }
}

/*import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/api/dio_consumer.dart';
import 'package:marketi_app/core/resources/app_sizes.dart';
import 'package:marketi_app/core/resources/extension_manager.dart';
import 'package:marketi_app/core/theme/app_colors.dart';
import '../../data/models/product_response.dart';
import '../../data/repo/home_repo.dart';
import '../vm/home_cubits.dart';
import '../vm/home_states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // BlocProvider(
        //   create: (context) => ProductsCubit(HomeRepo(api: DioConsumer(dio: Dio())))..getProducts(),
        //   child:
        Scaffold(
            body:
                // BlocBuilder<ProductsCubit, HomeStates>(
                //   builder: (context, state) {
                //     return
                Padding(
      padding: EdgeInsets.all(AppSizes.defaultPadding),
      child: Center(
          child:
              // (state is ProductsLoading)
              //     ? GridView.builder(
              //         padding: const EdgeInsets.all(16),
              //         itemCount: 6,
              //         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              //           maxCrossAxisExtent: 200,
              //           childAspectRatio: 0.7,
              //           mainAxisSpacing: 20,
              //           crossAxisSpacing: 16,
              //         ),
              //         itemBuilder: (ctx, index) {
              //           return const ProductCardShimmer();
              //         },
              //       )
              // : (state is NoInternetConnectionState)? NoConnectionScreen()
              // : (state is ProductsFailure)
              //     ? Center(
              //         ////! Good error view
              //         child: Text('Error: ${state.errorModel.message}'),
              //       )
              //     : (state is ProductsSuccess)
              //         ?
              GridView.builder(
        // Add pagination
        itemCount: 5, //state.products.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 0.7,
          mainAxisSpacing: 20,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (ctx, index) {
          // final product = state.products[index];
          return Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Product());
        },
      )
          // : SizedBox(child: Center(child: Text("What...oops"))),
          ),
    )
            //; },
            // ),
            // ),
            );
  }
}

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Card(
        color: AppColors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.lightBlue700,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.network(""),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.lightBlue100,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                        child: Text(
                          "15% OFF",
                          style: TextStyle(color: AppColors.lightBlue100),
                        )),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.star_border,
                        color: AppColors.white,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text("499 lE"),
                  Spacer(),
                  Row(
                    spacing: AppSizes.sm,
                    children: [
                      Icon(Icons.star_border),
                      Text("4.9"),
                    ],
                  ),
                ],
              ),
              Text("name_product"),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.product,
    required this.onPress,
  });

  final double width, aspectRatio;
  final ProductResponse product;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: GestureDetector(
        onTap: onPress,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: aspectRatio,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF979797).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.network(
                  product.images![0],
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              ////! auto_text
              product.title ?? "",
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product.price?.toStringAsFixed(2) ?? ""}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFF7643),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    Text(
                      "${product.rating ?? ""}",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFF7643),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProductCardShimmer extends StatelessWidget {
  const ProductCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.02,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(padding: const EdgeInsets.all(20), color: Colors.grey[300]).withShimmer(),
            ),
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(height: 16, width: 100, color: Colors.grey[300]).withShimmer(),
          ),
          const SizedBox(height: 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(height: 16, width: 80, color: Colors.grey[300]).withShimmer(),
          ),
        ],
      ),
    );
  }
}
*/
