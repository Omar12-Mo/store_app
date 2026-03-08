import 'package:store_app/models/product_model.dart';
import 'package:store_app/service/api_service.dart';

class UpdateProductService {
  Future<ProductModel> updateproduct(ProductModel product , int id) async {
    final ProductModel productModel = await ApiService().post(
      endpoints: "products/$id",
      body: product,
    );
    return productModel;
  }
}
