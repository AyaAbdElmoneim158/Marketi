import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../../../../core/api/api_consumer.dart';
import '../../../../core/api/end_points.dart';
import '../../../../core/errors/error_marketi_model.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/connection_manager.dart';
import '../models/brand_response.dart';
import '../models/category_response.dart';
import '../models/product_response.dart';
import '../models/top_search.dart';
import 'home_cache.dart';

class HomeRepo {
  final ApiConsumer api;
  HomeRepo({required this.api});

  Future<Either<Failure, List<ProductResponse>>> getProducts() async {
    try {
      final isConnection = await ConnectionManager.checkConnection();
      List<ProductResponse> products = [];
      if (!isConnection) {
        products = await HomeCache.getProducts();
        if (products.isEmpty) {
          return Left(CacheFailure(ErrorMarketiModel("Cache products is Failure")));
        }
      } else {
        final response = await api.get(EndPoint.products) as Map<String, dynamic>;
        final list = response["list"] as List;
        products = list.map((e) => ProductResponse.fromJson(e)).toList();
        await HomeCache.saveProducts(products);
      }
      debugPrint("list len: ${products.length}");
      return Right(products);
    } on ServerException catch (e) {
      return Left(ServerFailure(ErrorMarketiModel(e.errModel.message)));
    } on CacheException catch (e) {
      return Left(CacheFailure(ErrorMarketiModel(e.errModel.message)));
    } catch (e) {
      return Left(UnknownFailure(ErrorMarketiModel(e.toString())));
    }
  }

  Future<Either<Failure, List<CategoryResponse>>> getCategories() async {
    try {
      final isConnection = await ConnectionManager.checkConnection();
      List<CategoryResponse> categories = [];
      if (!isConnection) {
        categories = await HomeCache.getCategories();
        if (categories.isEmpty) {
          return Left(CacheFailure(ErrorMarketiModel("Failed to retrieve categories from cache")));
        }
      } else {
        final response = await api.get(EndPoint.categories) as Map<String, dynamic>;
        final list = response["list"] as List;
        categories = list.map((e) => CategoryResponse.fromJson(e)).toList();
        await HomeCache.saveCategories(categories);
      }
      return Right(categories);
    } on ServerException catch (e) {
      return Left(ServerFailure(ErrorMarketiModel(e.errModel.message)));
    } on CacheException catch (e) {
      return Left(CacheFailure(ErrorMarketiModel(e.errModel.message)));
    } catch (e) {
      return Left(UnknownFailure(ErrorMarketiModel(e.toString())));
    }
  }

  Future<Either<Failure, List<BrandResponse>>> getBrands() async {
    try {
      final isConnection = await ConnectionManager.checkConnection();
      List<BrandResponse> brands = [];
      if (!isConnection) {
        brands = await HomeCache.getBrands();
        if (brands.isEmpty) {
          return Left(CacheFailure(ErrorMarketiModel("Failed to retrieve brands from cache")));
        }
      } else {
        final response = await api.get(EndPoint.brands) as Map<String, dynamic>;
        final list = response["list"] as List;
        brands = list.map((e) => BrandResponse.fromJson(e)).toList();
        await HomeCache.saveBrands(brands);
      }
      return Right(brands);
    } on ServerException catch (e) {
      return Left(ServerFailure(ErrorMarketiModel(e.errModel.message)));
    } on CacheException catch (e) {
      return Left(CacheFailure(ErrorMarketiModel(e.errModel.message)));
    } catch (e) {
      return Left(UnknownFailure(ErrorMarketiModel(e.toString())));
    }
  }

  Future<Either<Failure, List<String>>> getBanners() async {
    try {
      final isConnection = await ConnectionManager.checkConnection();
      List<String> banners = [];
      if (!isConnection) {
        banners = await HomeCache.getBanners();
        if (banners.isEmpty) {
          return Left(CacheFailure(ErrorMarketiModel("Failed to retrieve banners from cache")));
        }
      } else {
        final response = await api.get(EndPoint.banners) as Map<String, dynamic>;
        final list = response["list"] as List;
        banners = list.map((e) => e as String).toList();
        await HomeCache.saveBanners(banners);
      }
      return Right(banners);
    } on ServerException catch (e) {
      return Left(ServerFailure(ErrorMarketiModel(e.errModel.message)));
    } on CacheException catch (e) {
      return Left(CacheFailure(ErrorMarketiModel(e.errModel.message)));
    } catch (e) {
      return Left(UnknownFailure(ErrorMarketiModel(e.toString())));
    }
  }

  Future<Either<Failure, List<TopSearch>>> getTopSearch() async {
    try {
      final isConnection = await ConnectionManager.checkConnection();
      List<TopSearch> topSearch = [];
      if (!isConnection) {
        topSearch = await HomeCache.getTopSearch();
        if (topSearch.isEmpty) {
          return Left(CacheFailure(ErrorMarketiModel("Failed to retrieve topSearch from cache")));
        }
      } else {
        final response = await api.get(EndPoint.topSearch) as Map<String, dynamic>;
        final list = response["list"] as List;
        topSearch = list.map((e) => TopSearch.fromJson(e)).toList();
        await HomeCache.saveTopSearch(topSearch);
      }
      return Right(topSearch);
    } on ServerException catch (e) {
      return Left(ServerFailure(ErrorMarketiModel(e.errModel.message)));
    } on CacheException catch (e) {
      return Left(CacheFailure(ErrorMarketiModel(e.errModel.message)));
    } catch (e) {
      return Left(UnknownFailure(ErrorMarketiModel(e.toString())));
    }
  }
}
