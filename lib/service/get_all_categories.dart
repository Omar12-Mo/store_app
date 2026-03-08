import 'package:dio/dio.dart';
import 'package:store_app/constants/service_constants.dart';
import 'package:store_app/service/api_service.dart';

class GetAllCategories {
  final dio = Dio(BaseOptions(baseUrl: ServiceConstants.baseUrl));

  Future<List<dynamic>> getAllCategories() async {
    
   
      List<dynamic> categories =await ApiService().get(endpoints: "products/categories");
      return categories;
   
  }
}
