import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:syafiqa_apps/models/product_models.dart';

class ProductService {
  String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  // get product => null;

  Future<List<ProductModel>> getProducts() async {
    var url = '$baseUrl/products';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url), headers: headers);

    // print('product' + product.toString());

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }
      print('products ' + products.toString());
      return products;
    } else {
      throw Exception('Gagal Get Products!');
    }
  }
}
