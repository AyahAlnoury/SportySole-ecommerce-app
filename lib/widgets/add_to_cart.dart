// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sportysole/controller/cart_controller.dart';
import 'package:sportysole/core/constants.dart';
import 'package:sportysole/models/product_model.dart';

class AddToCartWidget extends StatelessWidget {
  final Function() onAdd;
  final Function() onRemove;
  final bool iconApear;
  final Products product;

  AddToCartWidget(
      {
      // required this.currentNumber,
      super.key,
      required this.onAdd,
      required this.onRemove,
      required this.iconApear,
      required this.product});
  CartPageController controller = Get.put(CartPageController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                color: kcontentColor,
                border: Border.all(
                  color: kcontentColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, border: Border.all()),
                    child: IconButton(
                      style: const ButtonStyle(),
                      onPressed: onRemove,
                      iconSize: 13,
                      icon: const Icon(
                        Ionicons.remove_outline,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  GetX<CartPageController>(
                      init: CartPageController(),
                      builder: (controller) {
                        {
                           return
                              //child:
                              Text(
                            controller.currentNumber.value.toString(),
                            style: const TextStyle(color: Colors.black),
                          );
                        }
                      }),
                  const SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all()),
                    child: IconButton(
                      style: const ButtonStyle(),
                      onPressed: onAdd,
                      iconSize: 12,
                      icon: const Icon(
                        Ionicons.add_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            iconApear
                ? GestureDetector(
                    onTap: () {
                      controller.addToCart(product, product.price!.toInt());
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: const Text(
                        "Add to Cart",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
