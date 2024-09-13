import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            icon: const Icon(Ionicons.chevron_back),
          ),
          const SizedBox(
            width: 75,
          ),
          const Text(
            "Product Details",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            icon: const Icon(Ionicons.options_outline),
          ),
        ],
      ),
    );
  }
}
