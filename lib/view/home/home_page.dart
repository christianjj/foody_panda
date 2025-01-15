import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/common/custom_app_bar.dart';
import 'package:foody/common/custom_container.dart';
import 'package:foody/constants/constants.dart';
import 'package:foody/view/home/widgets/category_list.dart';

import '../../common/heading.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h),
          child: const CustomAppBar()),
      body: SafeArea(
        child: CustomContainer(containerContent: Column(
          children: [
            const CategoryList(),
            Heading(text: "Nearby Restaurant", onTap: () {}),
            Heading(text: "Try Something New", onTap: () {}),
            Heading(text: "Food Closer to you", onTap: () {}),
          ],
        )),
      ),
    );
  }
}
