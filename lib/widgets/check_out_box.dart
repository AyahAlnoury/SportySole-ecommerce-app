import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportysole/controller/cart_controller.dart';

// ignore: must_be_immutable
class CheckOutBox extends StatelessWidget {
  // final List<CartItem> items;
  CheckOutBox({
    super.key,
    // required this.items,
  });
  CartPageController controller = Get.put(CartPageController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          )),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Subtotal:",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                "\$${controller.cartProduct.length > 1 ? controller.cartProduct.map((e) => controller.quantity * e.price!).reduce((value1, value2) => value1 + value2) : controller.cartProduct[0].price! * controller.quantity.toInt()}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery free:",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                "\$10.00",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount:",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                "10%",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total:",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                "\$${controller.cartProduct.length > 1 ? controller.cartProduct.map((e) => controller.quantity * e.price!.toInt()).reduce((value1, value2) => value1 + value2) : controller.cartProduct[0].price! * controller.quantity.toInt()}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
          Center(
            child: Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(60),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const Text(
                "Check out",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
