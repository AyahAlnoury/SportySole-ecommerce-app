import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportysole/controller/home_page_controller.dart';
import 'package:sportysole/core/constants.dart';
import 'package:sportysole/widgets/category_widget.dart';
import 'package:sportysole/widgets/home_appbar.dart';
import 'package:sportysole/widgets/product_card_widget.dart';
import 'package:sportysole/widgets/product_tile.dart';
import 'package:sportysole/widgets/sale_cart.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  int currentSlide = 0;
  HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kscaffoldColor,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const HomeAppBar(),
                          const SizedBox(
                            height: 20,
                          ),
                          const SaleCartWidget(),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "New Arrival",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  homePageController.getData();
                                },
                                child: const Text(
                                  "See all",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          const ProductTileWidget(),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Best Seller",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "See all",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Categorywidget(),
                          const SizedBox(height: 10),
                          GetBuilder<HomePageController>(
                              init: HomePageController(),
                              builder: (controller) {
                                {
                                  if (controller.isLoading.value) {
                                    return const Center(
                                        child: CircularProgressIndicator());
                                  } else {
                                    return GridView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 20,
                                        ),
                                        itemCount: controller
                                            .productModel!.products!.length,
                                        itemBuilder: (context, index) {
                                          return ProductCardWidget(
                                            products: controller
                                                .productModel!.products![index],
                                            index: index,
                                          );
                                        });
                                  }
                                }
                              })
                        ])))));
  }
}
