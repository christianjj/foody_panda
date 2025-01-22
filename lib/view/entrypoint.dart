import 'package:flutter/material.dart';
import 'package:foody/view/bottom_navigation.dart';
import 'package:foody/view/profile/profile_page.dart';
import 'package:foody/view/search/search_page.dart';
import 'package:get/get.dart';

import '../controllers/tab_index_controller.dart';
import 'cart/cart_page.dart';
import 'home/home_page.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(() => Scaffold(
            body: Stack(
          children: [
            pageList[controller.tabIndex],
            bottomNavigation(context, controller)
          ],
        )));
  }
}
