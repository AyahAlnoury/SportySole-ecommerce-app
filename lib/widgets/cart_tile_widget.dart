import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sportysole/controller/cart_controller.dart';
import 'package:sportysole/core/constants.dart';
import 'package:sportysole/models/product_model.dart';

// ignore: must_be_immutable
class CartTileWidget extends StatelessWidget {
  final Products item; //cartItems[index]
  final Function() onRemove;
  final Function() onAdd;
  CartTileWidget(
      {super.key,
      required this.onRemove,
      required this.onAdd,
      required this.item});
  CartPageController controller = Get.put(CartPageController());
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Dismissible(
        key: Key(item.id.toString()),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          if (direction == DismissDirection.endToStart) {
            controller.removeFromCart(item, item.price!.toInt());
          }
        },
        background: Container(
          alignment: Alignment.centerRight,
          color: const Color.fromARGB(255, 249, 219, 216),
          child: const Icon(
            Ionicons.trash_outline,
            color: Colors.red,
          ),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 85,
                width: 85,
                decoration: BoxDecoration(
                  color: kcontentColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(10),
                child: Image.asset(item.image!),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name!,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    item.category!,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade400),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    item.price.toString(),
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      // Positioned(
      //     right: -20,
      //     top: 40,
      // child: AddToCartWidget(
      //     iconApear: false, onAdd: onAdd, onRemove: onRemove, product:  products.products![index],))
    ]);
  }
}
