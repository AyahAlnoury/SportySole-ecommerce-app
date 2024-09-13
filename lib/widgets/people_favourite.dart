import 'package:flutter/material.dart';

class PeapleFavouriteWidget extends StatefulWidget {
  const PeapleFavouriteWidget({super.key});

  @override
  State<PeapleFavouriteWidget> createState() => _PeapleFavouriteWidgetState();
}

class _PeapleFavouriteWidgetState extends State<PeapleFavouriteWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Wrap(
          spacing: -9.0,
          runSpacing: 8.0, // تحديد المسافة بين الأسطر
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/user4.jpg")),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/user2.jpg")),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/user1.jpg")),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/user3.jpg")),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "10.000+  people favourite this",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
