import 'dart:convert';

import 'package:trogon_media_machine_test/feature/home/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductsApiServices {
  static Future<List<Product>> getProducts() async {
    final response = await http.get(
        Uri.parse('https://fake-store-api.mock.beeceptor.com/api/products'));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      return List<Product>.from(jsonData.map((item) => Product.fromJson(item)));
    } else {
      throw Exception('Failed to load products');
    }
  }
}
