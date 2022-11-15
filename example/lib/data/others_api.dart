import 'package:example/data/api_constants.dart';
import 'package:example/data/api_names.dart';

import '../screens/api_call/products/products_model.dart';
import 'package:http/http.dart' as http;

class OthersApi {
  Future<ProductsModel> getProducts() async {
    try {
      final response =
          await http.get(Uri.parse(ApiConstants.baseUrl + ApiNames.products));
      if (response.statusCode == 200) {
        final myResponseData = productsModelFromJson(response.body);
        return myResponseData;
      } else {
        return ProductsModel();
      }
    } on Exception {
      return ProductsModel();
    }
  }
}
