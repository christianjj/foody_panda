import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/common/app_style.dart';
import 'package:foody/common/reusable_text.dart';
import 'package:foody/constants/uidata.dart';
import 'package:foody/controllers/category_controller.dart';
import 'package:foody/view/category/all_categories.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import 'category_widget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(categories.length, (i) {
            var category = categories[i];
            return CategoryWidget(category: category);
          })),
    );
  }
}

