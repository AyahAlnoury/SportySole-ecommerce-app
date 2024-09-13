import 'package:flutter/material.dart';
import 'package:sportysole/controller/cart_controller.dart';
import 'package:get/get.dart';
import 'package:sportysole/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  CartPageController controller =
      Get.put(CartPageController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      //HomePage(),
      //  CustomBottomNav(),
    );
  }
}
