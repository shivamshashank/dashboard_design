import 'package:dashboard_design/core/constants/app_text_style.dart';
import 'package:dashboard_design/core/constants/constant_colors.dart';
import 'package:dashboard_design/core/constants/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget profileBio() {
  return Expanded(
    flex: 58,
    child: Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ConstantColors.darkBlue,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(80.sp),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0.06.sw, 0.05.sh, 0.06.sw, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.settings,
                      color: ConstantColors.moderateBlue,
                      size: 32.sp,
                    ),
                    Icon(
                      Icons.notifications,
                      color: ConstantColors.moderateBlue,
                      size: 32.sp,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 0.025.sh,
                  ),
                  child: Image.asset(
                    "assets/images/profile_photo.png",
                    width: 0.32.sw,
                  ),
                ),
                Text(
                  Strings.profileName,
                  style: AppTextStyle.customTextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  Strings.profileEmail,
                  style: AppTextStyle.customTextStyle(
                    fontSize: 14.sp,
                    color: ConstantColors.moderateBlue,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.03.sh),
                  child: const Divider(
                    color: ConstantColors.dividerColor,
                    thickness: 2,
                  ),
                ),
                Text(
                  Strings.profileBio,
                  style: AppTextStyle.customTextStyle(
                    fontSize: 14.sp,
                    color: ConstantColors.moderateBlue,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
