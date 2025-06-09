// import 'package:dartz/dartz.dart';
// import 'package:flutter/material.dart';
// import 'package:marketi_app/core/api/api_consumer.dart';
// import 'package:marketi_app/core/api/end_points.dart';
// import 'package:marketi_app/core/errors/error_model.dart';
// import 'package:marketi_app/core/utils/connection_manager.dart';
// import '../../core/errors/exceptions.dart';
// import '../../core/errors/failures.dart';
// import 'product_cache.dart';
// import 'product_response.dart';

// class ProductsRepo {
//   final ApiConsumer api;
//   ProductsRepo({required this.api});
//   // https://www.linkedin.com/posts/ahmed-elsapagh-aa8010220_flutter-mobiledevelopment-sharedpreferences-activity-7326740940360990721-nFZT?utm_source=share&utm_medium=member_desktop&rcm=ACoAADfJfwkBw06ba5Z_704g9MyXUq9OikzgPQk
//   //! Failure
//   Future<Either<Failure, List<ProductResponse>>> getAllProducts() async {
//     try {
//       final isConnection = await ConnectionManager.checkConnection();
//       List<ProductResponse> products = [];
//       if (!isConnection) {
//         products = await ProductCache.getProducts();
//         if (products.isEmpty) {
//           return Left(CacheFailure(ErrorModel("Cache products is Failure")));
//         }
//       } else {
//         final response = await api.get(EndPoint.fakeStoreProducts) as List;
//         products = response.map((e) => ProductResponse.fromJson(e)).toList();
//         await ProductCache.saveProducts(products);
//       }
//       return Right(products);
//     } on ServerException catch (e) {
//       return Left(ServerFailure(ErrorModel(e.errModel.errorMessage)));
//     } on CacheException catch (e) {
//       return Left(CacheFailure(ErrorModel(e.errModel.errorMessage)));
//     } catch (e) {
//       return Left(UnknownFailure(ErrorModel(e.toString())));
//     }
//   }
// }
