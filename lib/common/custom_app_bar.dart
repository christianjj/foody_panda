import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/common/app_style.dart';
import 'package:foody/common/reusable_text.dart';

import '../constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundColor: kSecondary,
              backgroundImage: const NetworkImage(""),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:6.h, left: 8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(text: "Delivery to", style: appStyle(13, kSecondary, FontWeight.w600)),
                  SizedBox(width: width * 0.65,
                      child: Text("165543 vasda das dasdad asda sd as dsa das das dasd as", overflow: TextOverflow.ellipsis, style: appStyle(11, kGrayLight, FontWeight.normal),)),
                ],
              ),
            ),
            const Text("☀️", style: TextStyle(fontSize: 35))
          ],
        ),
      ),
    );
  }
}
