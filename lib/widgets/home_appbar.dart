import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sportysole/core/constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(15),
          ),
          iconSize: 30,
          icon: const Icon(Ionicons.menu_outline),
        ),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(15),
          ),
          iconSize: 30,
          icon: const Icon(Ionicons.notifications_outline),
        ),
      ],
    );
  }
}
