import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:store_app/constants/service_constants.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProducts {
  final dio = Dio(BaseOptions(baseUrl: ServiceConstants.baseUrl));

  Future<List<ProductModel>> getallproducts() async {
    final Response response = await dio.get("products");

    if (response.statusCode == 200) {
      List products = response.data;
      List<ProductModel> productsModel = [];
      for (var product in products) {
        productsModel.add(ProductModel.fromjson(product));
      }
      return productsModel;
    } else {
      throw Exception(response.statusMessage);
    }
  }
}
