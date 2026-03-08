import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:store_app/constants/service_constants.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/service/api_service.dart';

class GetAllProducts {
  final dio = Dio(BaseOptions(baseUrl: ServiceConstants.baseUrl));

  Future<List<ProductModel>> getallproducts() async {
    

  
      List products = await ApiService().get(endpoints: "products");
      List<ProductModel> productsModel = [];
      for (var product in products) {
        productsModel.add(ProductModel.fromjson(product));
      }
      return productsModel;
    
  }
}
