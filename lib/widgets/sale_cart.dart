import 'package:flutter/material.dart';

class SaleCartWidget extends StatelessWidget {
  const SaleCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
        ),
        Container(
          height: 170,
          width: double.infinity,
          decoration: BoxDecoration(
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/images/sale.jpg")),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(10),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 170,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(0),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(2, 10),
                  blurRadius: 10,
                  color: Colors.white.withOpacity(0.2),
                ),
              ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Column(
                children: [
                  Text(
                    "Get your",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Special sale",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Up to 50%",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Text(
                  "Shop now",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ],

      //   child: Row(
      //     children: [
      //       Container(
      //         height: 85,
      //         width: 85,
      //         decoration: BoxDecoration(
      //           color: kcontentColor,
      //           borderRadius: BorderRadius.circular(20),
      //         ),
      //         padding: const EdgeInsets.all(10),
      //         child: Image.asset(item.product.image),
      //       ),
      //       const SizedBox(
      //         width: 10,
      //       ),
      //       Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Text(
      //             item.product.title,
      //             style: const TextStyle(
      //                 fontSize: 16, fontWeight: FontWeight.bold),
      //           ),
      //           const SizedBox(
      //             height: 5,
      //           ),
      //           Text(
      //             item.product.category,
      //             style: TextStyle(
      //                 fontSize: 14,
      //                 fontWeight: FontWeight.bold,
      //                 color: Colors.grey.shade400),
      //           ),
      //           Text(
      //             "\$${item.product.price.toString()}",
      //             style: const TextStyle(
      //                 fontSize: 14, fontWeight: FontWeight.bold),
      //           ),
      //         ],
      //       )
      //     ],
      //   ),
      // ),
      // Positioned(
      //     top: 5,
      //     right: 5,
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.end,
      //       children: [
      //         IconButton(
      //           onPressed: () {},
      //           icon: const Icon(Ionicons.trash_outline, color: Colors.red),
      //         ),
      //         AddToCartWidget(
      //             currentNumber: item.quantity,
      //             onAdd: onAdd,
      //             onRemove: onRemove),
      //       ],
      //     ))
    );
  }
}
