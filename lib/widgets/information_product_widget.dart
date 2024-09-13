import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sportysole/models/product_model.dart';

class ProductInformationWidget extends StatelessWidget {
  const ProductInformationWidget({super.key, required this.product});
  final Products product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.name!,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "${product.category}",
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const Icon(
            Ionicons.heart_outline,
            size: 13,
            color: Colors.white,
          ),
        ]),
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "${product.price! - 2500}",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "${product.price}",
                  style: const TextStyle(
                    color: Colors.red,
                    decoration: TextDecoration.lineThrough,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        //   Row(
        //     children: [
        //       Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //
        //           Row(
        //             children: [
        //               Container(
        //                 width: 50,
        //                 height: 20,
        //                 decoration: BoxDecoration(
        //                   color: kprimaryColor,
        //                   borderRadius: BorderRadius.circular(15),
        //                 ),
        //                 alignment: Alignment.center,
        //                 padding: const EdgeInsets.symmetric(
        //                   horizontal: 5,
        //                   vertical: 2,
        //                 ),
        //                 child: Row(
        //                   children: [
        //                     const Icon(
        //                       Ionicons.star,
        //                       size: 13,
        //                       color: Colors.white,
        //                     ),
        //                     const SizedBox(width: 3),
        //                     Text(
        //                       product.rating.toString(),
        //                       style: const TextStyle(
        //                         color: Colors.white,
        //                         fontSize: 13,
        //                         fontWeight: FontWeight.bold,
        //                       ),
        //                     )
        //                   ],
        //                 ),
        //               ),
        //               const SizedBox(width: 5),
        //               const Text(
        //                 "(320 Reviews)",
        //                 style: TextStyle(
        //                   color: Colors.grey,
        //                   fontSize: 14,
        //                 ),
        //               )
        //             ],
        //           )
        //         ],
        //       ),
        //       const Spacer(),
        //       const Text.rich(
        //         TextSpan(
        //           children: [
        //             TextSpan(text: "Seller: "),
        //             TextSpan(
        //               text: "Tarqul isalm",
        //               style: TextStyle(
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //           ],
        //         ),
        //       )
        //     ],
        //   ),
      ],
    );
  }
}
