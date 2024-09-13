import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportysole/pages/cart_page.dart';
import 'package:sportysole/pages/home_page.dart';

class MainPageController extends GetxController {
  List<Widget> pages = [
    HomePage(),
    CartPage(),
    const Scaffold(),
    const Scaffold(),
  ];
  int currentTab = 0;
  List<String> titlePage = [
    'Home',
    'Cart',
    'Favourite',
    'Profile',
  ];
}
