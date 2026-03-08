import 'dart:io';

import 'package:dio/dio.dart';
import 'package:store_app/constants/service_constants.dart';
import 'package:store_app/models/product_model.dart';

class GetProductByCategoy {
  final Dio dio = Dio(BaseOptions(baseUrl: ServiceConstants.baseUrl));

  Future<List<ProductModel>> getproductsbycategory(String categoryName) async {
    final Response response = await dio.get("products/category/$categoryName");

    if (response.statusCode == 200) {
      List<dynamic> data = response.data;

      List<ProductModel> productsBycategory = [];

      for (var product in data) {
        productsBycategory.add(ProductModel.fromjson(product));
      }

      return productsBycategory;
    } else {
      throw Exception("erro by request${response.statusMessage}");
    }
  }
}
