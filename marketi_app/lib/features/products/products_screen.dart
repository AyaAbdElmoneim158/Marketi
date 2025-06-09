// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:marketi_app/core/api/dio_consumer.dart';
// import 'package:marketi_app/core/resources/app_sizes.dart';
// import 'package:marketi_app/core/resources/extension_manager.dart';
// import 'package:marketi_app/core/screen/no_connection_screen.dart';
// import 'package:marketi_app/features/products/product_repo.dart';
// import 'package:marketi_app/features/products/product_response.dart';
// import 'package:marketi_app/features/products/product_states.dart';
// import 'product_cubit.dart';

// class ProductsScreen extends StatelessWidget {
//   const ProductsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => ProductCubit(ProductsRepo(api: DioConsumer(dio: Dio())))..getAllProducts(),
//       child: Scaffold(
//         body: BlocBuilder<ProductCubit, ProductStates>(
//           builder: (context, state) {
//             return Padding(
//               padding: EdgeInsets.all(AppSizes.defaultPadding),
//               child: Center(
//                 child: (state is FetchingProductsLoading)
//                     ? GridView.builder(
//                         padding: const EdgeInsets.all(16),
//                         itemCount: 6,
//                         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                           maxCrossAxisExtent: 200,
//                           childAspectRatio: 0.7,
//                           mainAxisSpacing: 20,
//                           crossAxisSpacing: 16,
//                         ),
//                         itemBuilder: (ctx, index) {
//                           return const ProductCardShimmer();
//                         },
//                       )
//                     // : (state is NoInternetConnectionState)? NoConnectionScreen()
//                     : (state is FetchingProductsFailure)
//                         ? Center(
//                             ////! Good error view
//                             child: Text('Error: ${state.errMessage}'),
//                           )
//                         : (state is FetchingProductsSuccess)
//                             ? GridView.builder(
//                                 // Add pagination
//                                 itemCount: state.products.length,
//                                 gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                                   maxCrossAxisExtent: 200,
//                                   childAspectRatio: 0.7,
//                                   mainAxisSpacing: 20,
//                                   crossAxisSpacing: 16,
//                                 ),
//                                 itemBuilder: (ctx, index) {
//                                   final product = state.products[index];
//                                   return Padding(
//                                     padding: const EdgeInsets.symmetric(vertical: 8),
//                                     child: ProductCard(
//                                       product: product,
//                                       onPress: () async {},
//                                     ),
//                                   );
//                                 },
//                               )
//                             : SizedBox(child: Center(child: Text("What...oops"))),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class ProductCard extends StatelessWidget {
//   const ProductCard({
//     super.key,
//     this.width = 140,
//     this.aspectRatio = 1.02,
//     required this.product,
//     required this.onPress,
//   });

//   final double width, aspectRatio;
//   final ProductResponse product;
//   final VoidCallback onPress;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       child: GestureDetector(
//         onTap: onPress,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             AspectRatio(
//               aspectRatio: aspectRatio,
//               child: Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFF979797).withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Image.network(
//                   product.image,
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               ////! auto_text
//               product.title,
//               style: Theme.of(context).textTheme.bodyMedium,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 4),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "\$${product.price.toStringAsFixed(2)}",
//                   style: const TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w600,
//                     color: Color(0xFFFF7643),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     const Icon(
//                       Icons.star,
//                       color: Colors.amber,
//                       size: 16,
//                     ),
//                     Text(
//                       "${product.rating.rate}",
//                       style: const TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xFFFF7643),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProductCardShimmer extends StatelessWidget {
//   const ProductCardShimmer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 140,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           AspectRatio(
//             aspectRatio: 1.02,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: Container(padding: const EdgeInsets.all(20), color: Colors.grey[300]).withShimmer(),
//             ),
//           ),
//           const SizedBox(height: 8),
//           ClipRRect(
//             borderRadius: BorderRadius.circular(4),
//             child: Container(height: 16, width: 100, color: Colors.grey[300]).withShimmer(),
//           ),
//           const SizedBox(height: 4),
//           ClipRRect(
//             borderRadius: BorderRadius.circular(4),
//             child: Container(height: 16, width: 80, color: Colors.grey[300]).withShimmer(),
//           ),
//         ],
//       ),
//     );
//   }
// }
