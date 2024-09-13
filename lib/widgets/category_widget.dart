import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportysole/controller/cart_controller.dart';
import 'package:sportysole/core/constants.dart';
import 'package:sportysole/models/category_model.dart';

class Categorywidget extends StatelessWidget {
  const Categorywidget({super.key});
  //CartPageController controller = Get.put(CartPageController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 23,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GetBuilder<CartPageController>(
              init: CartPageController(),
              builder: (controller) {
                {
                  return

                      //  child:
                      InkWell(
                    onTap: () {
                      print(index);
                      controller.currentCatecory.value = index;
                      print(controller.currentCatecory.value);
                    },
                    child: Obx(() {
                      return Container(
                        height: 30,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: controller.currentImage.value == index
                              ? Colors.amber
                              : kcontentColor,
                        ),
                        child: Center(
                          child: Text(
                            categories[index].title,
                            style: const TextStyle(),
                          ),
                        ),
                      );
                    }),
                  );
                }
              });
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemCount: categories.length,
      ),
    );
  }
}
