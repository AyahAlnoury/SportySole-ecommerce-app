import 'dart:convert';
import 'dart:math';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:sportysole/models/product_model.dart';

class HomePageController extends GetxController {
  RxBool isLoading = true.obs;
  ProductModel? productModel;

  @override
  void onInit() {
    //fetchProducts();
    getData();
    super.onInit();
  }
  //final baseUrl = ' http://127.0.0.1:5500//lib/models/api/products.json';

  final baseUrl = 'http://192.168.1.102:5500/lib/models/api/products.json';

  getData() async {
    try {
      isLoading(true);
      http.Response response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);

        productModel = ProductModel.fromJson(data);
        print(productModel);

        print(productModel!.products![0].brand);

        update();
      } else {
        log(response.statusCode);
      }
    } catch (e) {
      print('there is a wrong $e');
    }
    isLoading(false);
    update();
  }
}
