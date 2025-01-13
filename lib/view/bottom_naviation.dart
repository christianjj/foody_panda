import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foody/controllers/tab_index_controller.dart';

import '../constants/constants.dart';

Widget bottomNavigation(BuildContext context, TabIndexController controller) =>
    Align(
        alignment: Alignment.bottomCenter,
        child: Theme(
            data: Theme.of(context).copyWith(canvasColor: kPrimary),
            child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                unselectedIconTheme: const IconThemeData(color: Colors.black38),
                selectedItemColor: kSecondary,
                onTap: (value) {
                  controller.setTabIndex = value;
                },
                currentIndex: controller.tabIndex,
                items: [
                  BottomNavigationBarItem(
                    icon: controller.tabIndex == 0
                        ? const Icon(
                            Feather.home,
                            color: kDark,
                          )
                        : const Icon(
                            Feather.home,
                            color: Colors.black38,
                          ),
                    label: 'Home',
                  ),
                  const BottomNavigationBarItem(
                     icon: Icon(AntDesign.search1),
                      label: 'Search'),
                  const BottomNavigationBarItem(
                      icon: Icon(AntDesign.shoppingcart),
                      label: 'Cart'),
                  const BottomNavigationBarItem(
                      icon: Icon(AntDesign.user),
                      label: 'Profile'),
                ])));
