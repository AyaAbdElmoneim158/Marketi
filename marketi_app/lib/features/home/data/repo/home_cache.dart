import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/brand_response.dart';
import '../models/category_response.dart';
import '../models/product_response.dart';
import '../models/top_search.dart';

class HomeCache {
  static Future<void> saveProducts(List<ProductResponse> data) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = jsonEncode(data.map((p) => p.toJson()).toList());
    await prefs.setString('products', jsonString);
  }

  static Future<List<ProductResponse>> getProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('products');
    if (jsonString == null) return [];
    final List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((json) => ProductResponse.fromJson(json)).toList();
  }

  static Future<void> saveCategories(List<CategoryResponse> data) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = jsonEncode(data.map((p) => p.toJson()).toList());
    await prefs.setString('categories', jsonString);
  }

  static Future<List<CategoryResponse>> getCategories() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('categories');
    if (jsonString == null) return [];
    final List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((json) => CategoryResponse.fromJson(json)).toList();
  }

  static Future<void> saveBrands(List<BrandResponse> data) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = jsonEncode(data.map((p) => p.toJson()).toList());
    await prefs.setString('brands', jsonString);
  }

  static Future<List<BrandResponse>> getBrands() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('brands');
    if (jsonString == null) return [];
    final List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((json) => BrandResponse.fromJson(json)).toList();
  }

  static Future<void> saveBanners(List<String> data) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = jsonEncode(data.map((p) => p).toList());
    await prefs.setString('banners', jsonString);
  }

  static Future<List<String>> getBanners() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('banners');
    if (jsonString == null) return [];
    final List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((json) => json as String).toList();
  }

  static Future<void> saveTopSearch(List<TopSearch> data) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = jsonEncode(data.map((p) => p.toJson()).toList());
    await prefs.setString('topSearch', jsonString);
  }

  static Future<List<TopSearch>> getTopSearch() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('topSearch');
    if (jsonString == null) return [];
    final List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((json) => TopSearch.fromJson(json)).toList();
  }
}
