import 'package:dio/dio.dart';
import 'package:store_app/constants/service_constants.dart';
import 'package:store_app/models/product_model.dart';

class ApiService {
  final Dio dio = Dio(BaseOptions(baseUrl: ServiceConstants.baseUrl));

  Future<dynamic> get({required String endpoints}) async {
    Response response = await dio.get(endpoints);
    if (response.statusCode == 200) {
      final data = response.data;
      return data;
    } else {
      throw Exception(response.statusMessage);
    }
  }

  Future<dynamic> post({
    required String endpoints,
    required ProductModel body,
  }) async {
    Response response = await dio.post(endpoints, data: {
      "title": body.name,
      "price":body.price,
      "description":body.description,
      "image":body.image,
      "category":body.category
    });
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(response.statusMessage);
    }
  }
}
