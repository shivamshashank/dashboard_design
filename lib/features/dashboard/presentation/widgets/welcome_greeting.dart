import 'package:dashboard_design/core/constants/app_text_style.dart';
import 'package:dashboard_design/core/constants/constant_colors.dart';
import 'package:dashboard_design/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget welcomeGreeting({required VoidCallback onTapNextButton}) {
  return Expanded(
    flex: 38,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            Strings.welcomeToDashboard,
            style: AppTextStyle.customTextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: ConstantColors.darkBlue,
            ),
          ),
          Text(
            Strings.welcomeGreeting,
            style: AppTextStyle.customTextStyle(
              fontSize: 15.sp,
              color: ConstantColors.darkBlue,
            ),
            textAlign: TextAlign.center,
          ),
          GestureDetector(
            onTap: onTapNextButton,
            child: Container(
              width: 0.64.sw,
              height: 0.06.sh,
              decoration: BoxDecoration(
                color: ConstantColors.moderateBlue,
                borderRadius: BorderRadius.circular(
                  24.sp,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 0.26.sw),
                  Text(
                    Strings.next,
                    style: AppTextStyle.customTextStyle(
                      fontSize: 17.sp,
                      color: ConstantColors.darkBlue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    size: 24.sp,
                    color: ConstantColors.darkBlue,
                  ),
                  SizedBox(width: 0.05.sw),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
