import 'package:dashboard_design/core/constants/app_text_style.dart';
import 'package:dashboard_design/core/constants/constant_colors.dart';
import 'package:dashboard_design/core/constants/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget welcomeBackground() {
  return Expanded(
    flex: 62,
    child: Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(80.sp),
          ),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/welcome_background.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(80.sp),
            ),
            color: ConstantColors.welcomeBackgroundColor,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "${Strings.dashboard}\n",
                    style: AppTextStyle.customTextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: Strings.forOrdinaryPeople,
                    style: AppTextStyle.customTextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}