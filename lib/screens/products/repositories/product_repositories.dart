import 'package:clean_architecture_project/models/product_models.dart';
import 'package:http/http.dart' as http;

class ProductRepositories {
  Future<ProductResponse> fetchProducts() async {
    final response = await http.get(Uri.parse(
        "https://ebasket.com.bd/api/popular-productv2")); // Replace with your API endpoint

    if (response.statusCode == 200) {
      return productResponseFromJson(response.body);
    } else {
      throw Exception('Failed to load products');
    }
  }
}
