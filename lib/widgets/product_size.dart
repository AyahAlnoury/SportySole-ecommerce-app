import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportysole/controller/cart_controller.dart';
import 'package:sportysole/models/product_model.dart';

// ignore: must_be_immutable
class ProductSize extends StatelessWidget {
  ProductSize({
    super.key,
    required this.product,
  });
  final Products product;

  CartPageController controller = Get.put(CartPageController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: GetBuilder<CartPageController>(
          builder: (CartPageController controller) {
        return Row(
          children: List.generate(
            11,
            (index) => GestureDetector(
              onTap: () {
                controller.currentSize.value = index;
                print(index);
              },
              child: Obx(() {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: controller.currentSize.value == index
                        ? Border.all(
                            color: Colors.black,
                          )
                        : Border.all(
                            color: Colors.white,
                          ),
                  ),
                  padding: controller.currentSize.value == index
                      ? const EdgeInsets.all(2)
                      : null,
                  margin: const EdgeInsets.only(right: 15),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        "${product.size![index]}",
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        );
      }),
    );

    // SizedBox(
    //   height: 90,
    //   child: ListView.separated(
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return Column(
    //         children: [
    //           Container(
    //             height: 60,
    //             width: 60,
    //             decoration: BoxDecoration(
    //               shape: BoxShape.circle,
    //               image: DecorationImage(
    //                 image: AssetImage(
    //                   products[index].image,
    //                 ),
    //               ),
    //             ),
    //           ),
    //           const SizedBox(height: 5),
    //         ],
    //       );
    //     },
    //     separatorBuilder: (context, index) => const SizedBox(width: 20),
    //     itemCount: 5,
    //   ),
    // );
  }
}
