import 'package:dashboard_design/core/constants/app_text_style.dart';
import 'package:dashboard_design/core/constants/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget profileDetailContainer({
  required String imageLabel,
  required String label,
  required String value,
}) {
  return Container(
    margin: EdgeInsets.only(bottom: 0.015.sh),
    height: 0.09.sh,
    decoration: BoxDecoration(
      color: ConstantColors.lightBlue,
      borderRadius: BorderRadius.circular(16.sp),
    ),
    child: Row(
      children: [
        SizedBox(width: 0.01.sh),
        Container(
          width: 0.15.sw,
          height: 0.07.sh,
          decoration: BoxDecoration(
            color: ConstantColors.moderateBlue,
            borderRadius: BorderRadius.circular(12.sp),
          ),
          child: Image.asset(
            "assets/images/$imageLabel.png",
            scale: 3,
          ),
        ),
        SizedBox(width: 0.07.sw),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: AppTextStyle.customTextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: ConstantColors.darkBlue,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              value,
              style: AppTextStyle.customTextStyle(
                fontSize: 12.sp,
                color: ConstantColors.darkBlue,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
