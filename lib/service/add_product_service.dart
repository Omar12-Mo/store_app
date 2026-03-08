import 'package:store_app/models/product_model.dart';
import 'package:store_app/service/api_service.dart';

class AddProductService {
  Future<ProductModel> addproduct(ProductModel product) async {
    final ProductModel productModel = await ApiService().post(
      endpoints: "products",
      body: product,
    );
    return productModel;
  }
}
