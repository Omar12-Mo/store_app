import 'package:dio/dio.dart';
import 'package:store_app/constants/service_constants.dart';

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
}
