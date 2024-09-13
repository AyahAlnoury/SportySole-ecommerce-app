import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sportysole/controller/cart_controller.dart';
import 'package:sportysole/controller/home_page_controller.dart';
import 'package:sportysole/core/constants.dart';
import 'package:sportysole/models/product_model.dart';
import 'package:sportysole/pages/product_page.dart';

// ignore: must_be_immutable
class ProductCardWidget extends StatelessWidget {
  ProductCardWidget({
    super.key,
    required this.index,
    required this.products,
  });
  int index;
  final Products products;
  CartPageController controllerCart = Get.put(CartPageController());

  HomePageController controller = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controllerCart.resetNumber();

        Get.to(() => ProductPage(
              products: controller.productModel!,
              tag:
                  '${controller.productModel!.products![index].name}image00110${controller.productModel!.products![index].id}',
              index: index,
            ));
      },
      child: SizedBox(
        height: 100,
        width: 160,
        child: Column(children: [
          Container(
              height: 90,
              width: 125,
              decoration: BoxDecoration(
                  color: kcontentColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: SizedBox(
                  height: 115,
                  width: 115,
                  child: Hero(
                      tag:
                          '${controller.productModel!.products![index].name}image00110${controller.productModel!.products![index].id}',
                      child: Image.asset("${products.image}")),
                ),
              )),
          // ),
          //),
          const SizedBox(height: 5),
          Text(
            "${products.name}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(children: [
              Text(
                "${products.category}",
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              Text(
                "${products.price}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ]),
            IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: kcontentColor,
                padding: const EdgeInsets.all(15),
              ),
              iconSize: 20,
              icon: const Icon(Ionicons.heart_outline),
            ),
          ]),
        ]),
      ),
    );
  }
}
