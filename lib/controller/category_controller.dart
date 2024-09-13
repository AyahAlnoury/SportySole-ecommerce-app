// import 'dart:convert';
// import 'dart:math';

// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:sportysole/models/product_model.dart';

// class CategoryController extends GetxController{
//   ProductModel? productModelCategory;

// var url = 'http://127.0.0.1:5500/lib/models/api/products.json/products/0/brand'

// 'http://192.168.1.103:5500/lib/models/api/products.json';
// //"https://fakestoreapi.com/products/categories";

//   loadCategoriesFromApi() async {
//     var response = await http.get(Uri.parse(url));
//     var categoriesJson = json.decode(response.body);
//     return categoriesJson;
//   }


//    var categories = [].obs;
//   var currentIndex = 0.obs;
//   var loading = false.obs;

//   CategoriesController() {
//     loadCategories();
//   }

//   loadCategories() async {


// try {
//       loading(true);
//       http.Response response = await http.get(Uri.parse(url));
//       if (response.statusCode == 200) {
//         Map<String, dynamic> data = jsonDecode(response.body);

//         productModelCategory = ProductModel.fromJson(data);
        
//         print(productModelCategory!.products![0].brand);
//         update();
//       } else {
//         log(response.statusCode);
//       }
//     } catch (e) {
//       print('there is a wrongCategory $e');
//     }
//     loading(false);
//     update();
//   }



//            .loadProductsFromRepo(categories[currentIndex.value]);
//     }
//     loading(false);           


 

//   changeCategories(index) async {
//     currentIndex(index);
//     await productsController.loadProductsFromRepo(categories[index]);
//   }
// }