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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 23.r,
                  backgroundColor: kSecondary,
                  backgroundImage: const NetworkImage("https://makepix.b-cdn.net/makepix_c8c9f3cb-2fe2-4c7a-ad96-1a201709c35d/cute-pink-anime-girl-95ec2708_0_m.webp"),
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
              ],
            ),
            const Text("☀️", style: TextStyle(fontSize: 35))
          ],
        ),
      ),
    );
  }

  String getTimeofDay() {
    final hour = DateTime.now().hour;
    if (hour >= 0 && hour < 12) {
      return "";
    } else if (hour < 12 && hour < 16) {
      return "";
    } else {
      return "";
    }
  }
}
