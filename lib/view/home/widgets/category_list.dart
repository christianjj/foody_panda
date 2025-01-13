import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/common/app_style.dart';
import 'package:foody/common/reusable_text.dart';
import 'package:foody/constants/uidata.dart';
import 'package:foody/controllers/category_controller.dart';
import 'package:foody/view/category/all_categories.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return Container(
      height: 80.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(categories.length, (i) {
            var category = categories[i];
            return GestureDetector(
                onTap: () {
                  if (controller.categoryValue == category['_id']) {
                    controller.updateCategory = '';
                    controller.updateTitle = '';
                  } else if (category['value'] == 'more'){
                  Get.to(() => const AllCategories(),
                  transition: Transition.cupertino);
                  }
                },
                child: Obx(() => Container(
                    width: width * 0.19,
                    margin: EdgeInsets.only(right: 5.w),
                    padding: EdgeInsets.only(top: 4.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                          color: controller.categoryValue == category['_id']
                              ? kSecondary
                              : kOffWhite,
                          width: 0.5.w),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 35.h,
                          child: Image.network(category['imageUrl'],
                              fit: BoxFit.contain),
                        ),
                        ReusableText(
                            text: category['title'],
                            style: appStyle(12, kDark, FontWeight.normal))
                      ],
                    ))));
          })),
    );
  }
}
