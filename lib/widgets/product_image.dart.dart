import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportysole/controller/cart_controller.dart';
import 'package:sportysole/models/product_model.dart';

// ignore: must_be_immutable
class ProductImage extends StatelessWidget {
  ProductImage({super.key, required this.product, required this.index});
  final Products product;
  CartPageController controller = Get.put(CartPageController());
  int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (i) => GetX<CartPageController>(
            init: CartPageController(),
            builder: (controller) {
              {
                return GestureDetector(
                  onTap: () {
                    controller.currentImage.value = i;
                    index = i;
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: controller.currentImage.value == i
                          // int.fromEnvironment(name)
                          ? Border.all(
                              color: Colors.amber,
                            )
                          : Border.all(
                              color: Colors.white,
                            ),
                    ),
                    padding: controller.currentImage.value == i
                        ? const EdgeInsets.all(2)
                        : null,
                    margin: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            product.images![i],
                          ),
                        ),
                        //color: widget.product.colors[index],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                );
              }
            }),
      ),
    );
  }
}
