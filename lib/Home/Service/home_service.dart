import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_tikus/Home/Model/product_model.dart';

class HomeService {
  String URL = '';

  final dio = Dio();

  Future<List<Product>?> GetProuct() async {
    // Product product =
    //     Product(banners: [], cuisines: [], dishes: [], listRestaurants: []);

    try {
      var response = await dio.post(URL, data: {"pageNumber": 1});

      if (response.statusCode == 200) {
        Product.fromJson(response.data);
        print(response.data);
      }
    } catch (e) {
      print(e);
    }
  }
}
