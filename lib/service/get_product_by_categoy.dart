import 'dart:io';

import 'package:dio/dio.dart';
import 'package:store_app/constants/service_constants.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/service/api_service.dart';

class GetProductByCategoy {
  final Dio dio = Dio(BaseOptions(baseUrl: ServiceConstants.baseUrl));

  Future<List<ProductModel>> getproductsbycategory(String categoryName) async {
    

    
      List<dynamic> data = await ApiService().get(endpoints: "products/category/$categoryName");

      List<ProductModel> productsBycategory = [];

      for (var product in data) {
        productsBycategory.add(ProductModel.fromjson(product));
      }

      return productsBycategory;
   
  }
}
