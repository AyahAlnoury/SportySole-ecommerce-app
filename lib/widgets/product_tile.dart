import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sportysole/controller/home_page_controller.dart';
import 'package:sportysole/core/constants.dart';
import 'package:sportysole/pages/product_page.dart';

class ProductTileWidget extends StatelessWidget {
  const ProductTileWidget({
    super.key,
  });

  // final Product product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GetBuilder<HomePageController>(
              init: HomePageController(),
              builder: (controller) {
                {
                  if (controller.isLoading.value) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return GestureDetector(
                      onTap: () {
                        Get.to(
                          () => ProductPage(
                            tag:
                                '${controller.productModel!.products![index].name}image000${controller.productModel!.products![index].id}',
                            products: controller.productModel!,
                            index: index,
                          ),
                        );
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
                                        '${controller.productModel!.products![index].name}image000${controller.productModel!.products![index].id}',
                                    child: Image.asset(
                                        "${controller.productModel!.products![index].image}")
                                    //AssetImage("assets/images/adidas-campus-green.png"),

                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${controller.productModel!.products![index].name}",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(children: [
                                  Text(
                                    "${controller.productModel!.products![index].category}",
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "${controller.productModel!.products![index].price}",
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
              });

          // ProductCardWidget(
          //   tag: 'image/${products[index].price + products[index].id}',
          //   product: products[index],
          // );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 5),
        itemCount: 5,
      ),
    );
  }
}
