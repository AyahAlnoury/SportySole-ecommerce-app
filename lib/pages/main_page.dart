import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sportysole/controller/main_page_controller.dart';

// ignore: must_be_immutable
class CustomBottomNav extends StatelessWidget {
  CustomBottomNav({
    super.key,
  });
  MainPageController controller = Get.put(MainPageController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainPageController>(
      builder: (controller) => Scaffold(
        // appBar:
        //  AppBar(title: Text(controller.titlePage[controller.currentTab])),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            elevation: 0,
            height: 79,
            color: Colors.white,
            shape: const CircularNotchedRectangle(),
            notchMargin: 5,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List<Widget>.generate(4, (index) {
                return Column(
                  children: [
                    IconButton(
                      iconSize: 30,
                      onPressed: () {
                        controller.currentTab = index;
                        controller.update();
                      },
                      icon: index == 0
                          ? Icon(
                              Ionicons.home_outline,
                              color: controller.currentTab == index
                                  ? Colors.black
                                  : Colors.grey.shade400,
                            )
                          : index == 1
                              ? Icon(
                                  Ionicons.cart_outline,
                                  color: controller.currentTab == index
                                      ? Colors.black
                                      : Colors.grey.shade400,
                                )
                              : index == 2
                                  ? Icon(
                                      Ionicons.heart_outline,
                                      color: controller.currentTab == index
                                          ? Colors.black
                                          : Colors.grey.shade400,
                                    )
                                  : Icon(
                                      Ionicons.person_outline,
                                      color: controller.currentTab == index
                                          ? Colors.black
                                          : Colors.grey.shade400,
                                    ),
                    ),
                    controller.currentTab == index
                        ? Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: controller.currentTab == index
                                  ? Colors.black
                                  : Colors.grey.shade400,
                            ),
                          )
                        : Container()
                  ],
                );
              }),
            )),
        body: controller.pages[controller.currentTab],
      ),
    );
  }
}
