import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'product_response.dart';

class ProductCache {
  // JSON String حفظ المنتجات كـ //
  static Future<void> saveProducts(List<ProductResponse> products) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = jsonEncode(products.map((p) => p.toJson()).toList());
    await prefs.setString('products', jsonString);
  }

// قراءة المنتجات //
  static Future<List<ProductResponse>> getProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('products');
    if (jsonString == null) return [];
    final List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((json) => ProductResponse.fromJson(json)).toList();
  }

// إضافة منتج //
  static Future<void> addProduct(ProductResponse newProduct) async {
    final products = await getProducts();
    products.add(newProduct);
    await saveProducts(products);
  }

// id حذف منتج حسب الـ //
  static Future<void> deleteProduct(String id) async {
    final products = await getProducts();
    products.removeWhere((p) => p.id == id);
    await saveProducts(products);
  }
}
/*

import 'dart: convert';
import
'package:shared_preferences/shared_preferences.dart';
// Model: Product
class Product {
final String id;
final String name;
Product({required this.id, required this.name});
Map<String, dynamic> toJson() => {
};
'id': id,
'name' name,
factory Product.fromJson(Map<String, dynamic> json) => Product(
id: json['id'],
name: json['name'],
);
}
JSON String حفظ المنتجات كـ //
Future<void> saveProducts (List<Product> products) async {
}
final prefs = await SharedPreferences.getInstance();
final jsonString = jsonEncode(products.map((p) => p.toJson()).toList()); await prefs.setString('products', jsonString);
قراءة المنتجات //
Future<List<Product>> getProducts() async {
}
final prefs = await SharedPreferences.getInstance(); final jsonString
=
prefs.getString('products');
if (jsonString == null) return [];
final List<dynamic> jsonList = jsonDecode(jsonString);
return jsonList.map((json) => Product. fromJson(json)).toList();
إضافة منتج //
Future<void> addProduct (Product newProduct) async {
final products = await getProducts();
products.add(newProduct);
await saveProducts (products);
}
id حذف منتج حسب الـ //
Future<void> deleteProduct(String id) async {
final products = await getProducts();
products.removeWhere((p) => p.id == id);
await saveProducts (products);
}
 */
