import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportysole/controller/cart_controller.dart';
import 'package:sportysole/core/constants.dart';
import 'package:sportysole/models/product_model.dart';
import 'package:sportysole/widgets/product_appbar.dart';
import 'package:sportysole/widgets/add_to_cart.dart';
import 'package:sportysole/widgets/information_product_widget.dart';
import 'package:sportysole/widgets/people_favourite.dart';
import 'package:sportysole/widgets/product_image.dart.dart';
import 'package:sportysole/widgets/product_size.dart';

// ignore: must_be_immutable
class ProductPage extends StatelessWidget {
  final ProductModel products;
  int index;
  final String tag;
  ProductPage(
      {super.key,
      required this.products,
      required this.index,
      required this.tag});

  CartPageController controller =
      Get.put(CartPageController(), permanent: true);
  int currentImage = 0;
  int currentNumber = 1;
  @override
  Widget build(BuildContext context) {
    return GetX<CartPageController>(builder: (controller) {
      {
        return Scaffold(
            backgroundColor: kcontentColor,
            floatingActionButton: AddToCartWidget(
              iconApear: true,
              onAdd: () {
                controller.onAdd();
              },
              onRemove: () {
                controller.onRemove();
              },
              product: products.products![index],
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            body: SafeArea(
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                  const ProductAppBar(),
                  Stack(children: [
                    Container(
                      height: 220,
                      width: double.infinity,
                      color: kcontentColor,
                    ),
                    GetX<CartPageController>(
                        init: CartPageController(),
                        builder: (controller) {
                          {
                            return Center(
                              child: Hero(
                                tag: tag,
                                child: Image.asset(
                                  products.products![index]
                                      .images![controller.currentImage.value],

                                  height: 150,
                                  width: 150,
                                  // ),
                                ),
                              ),
                            );
                            //,
                          }
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 132),
                          child: ProductImage(
                            index: index,
                            product: products.products![index],
                          ),
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(height: 20),
                  Container(
                    height: 400,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                      right: 20,
                      bottom: 100,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProductInformationWidget(
                              product: products.products![index]),
                          const SizedBox(height: 10),
                          ProductSize(
                            product: products.products![index],
                          ),
                          const SizedBox(height: 10),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Text(
                                    "${products.products![index].description}",
                                    style: const TextStyle(color: Colors.grey),
                                    maxLines:
                                        controller.isExpanded.value ? null : 2,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: GestureDetector(
                                      onTap: () {
                                        controller.isExpanded.value =
                                            !controller.isExpanded.value;
                                      },
                                      child: Text(
                                        controller.isExpanded.value
                                            ? 'Read less...'
                                            : 'Read more...',
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      )),
                                ),
                                const Divider(),
                                const PeapleFavouriteWidget(),
                              ]),
                        ]),
                  )
                ]))));
      }
    });
  }
}
