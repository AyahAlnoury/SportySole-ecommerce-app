import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sportysole/controller/cart_controller.dart';
import 'package:sportysole/widgets/cart_tile_widget.dart';
import 'package:sportysole/widgets/check_out_box.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  final CartPageController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Obx(() => Text(
              "${controller.cartProduct.length}",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(backgroundColor: Colors.white),
            icon: const Icon(Ionicons.chevron_back),
          ),
        ),
      ),
      bottomSheet: CheckOutBox(),
      body: Obx(() {
        print("Cart Product Length: ${controller.cartProduct.length}");
        return controller.cartProduct.isEmpty
            ? const Center(child: Text("Empty Cart"))
            : ListView.separated(
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  print("Building item at index: $index");
                  return CartTileWidget(
                    item: controller.cartProduct[index],
                    onRemove: () {
                      if (controller.quantity.value != 1) {
                        // setState(() {
                        //   cartItems[index].quantity--;
                        // });
                      }
                    },
                    onAdd: () {
                      // setState(() {
                      //   cartItems[index].quantity++;
                      // });
                    },
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: controller.cartProduct.length,
              );
      }),
    );
  }
}

// ignore: must_be_immutable
// class CartPage extends StatelessWidget {
//   CartPage({super.key});

//   CartPageController controller = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return
//         // GetBuilder<CartPageController>(builder: (controller) {
//         //     return controller.cartProduct.isEmpty
//         //         ? const Center(child: Text("Empty Cart")
//         //             //  CircularProgressIndicator(color: Colors.red),
//         //             )
//         // :
//         Scaffold(
//             backgroundColor: Colors.white,
//             appBar: AppBar(
//               centerTitle: true,
//               title: Text(
//                 "${controller.cartProduct.length}",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               leadingWidth: 60,
//               leading: Padding(
//                 padding: const EdgeInsets.only(left: 5),
//                 child: IconButton(
//                     onPressed: () {},
//                     style: IconButton.styleFrom(backgroundColor: Colors.white),
//                     icon: const Icon(Ionicons.chevron_back)),
//               ),
//             ),
//             bottomSheet: CheckOutBox(),
//             body: GetBuilder<CartPageController>(
//                 init: CartPageController(),
//                 builder: (controller) {
//                   return controller.cartProduct.length == 0
//                       ? const Center(child: Text("Empty Cart"))
//                       //CircularProgressIndicator(color: Colors.red)
//                       : ListView.separated(
//                           padding: const EdgeInsets.all(10),
//                           itemBuilder: (context, index) => CartTileWidget(
//                             item: controller.cartProduct[index],
//                             onRemove: () {
//                               if (controller.quantity.value != 1) {
//                                 // setState(() {
//                                 //   cartItems[index].quantity--;
//                                 // });
//                               }
//                             },
//                             onAdd: () {
//                               // setState(() {
//                               //   cartItems[index].quantity++;
//                               // });
//                             },
//                           ),
//                           separatorBuilder: (context, index) => const Divider(),
//                           itemCount: controller.cartProduct.length,
//                         );
//                 }));
//   }
// }
