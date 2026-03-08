import 'package:dio/dio.dart';
import 'package:store_app/constants/service_constants.dart';

class GetAllCategories {
  final dio = Dio(BaseOptions(baseUrl: ServiceConstants.baseUrl));

  Future<List<dynamic>> getAllCategories() async {
    final Response response = await dio.get("products/categories");
    if (response.statusCode == 200) {
      List<dynamic> categories = response.data;
      return categories;
    } else {
      throw Exception(response.statusMessage);
    }
  }
}
