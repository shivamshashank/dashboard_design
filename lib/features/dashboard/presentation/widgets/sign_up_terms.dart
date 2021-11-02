import 'package:dashboard_design/core/constants/app_text_style.dart';
import 'package:dashboard_design/core/constants/constant_colors.dart';
import 'package:dashboard_design/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget signUpTerms() {
  return Expanded(
    flex: 2,
    child: Stack(
      children: [
        Container(
          color: ConstantColors.darkBlue,
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(80.sp),
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 36.sp),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: Strings.acceptApp + "\n",
                      style: AppTextStyle.customTextStyle(
                        fontSize: 11.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      text: Strings.termsOfService,
                      style: AppTextStyle.customTextStyle(
                        fontSize: 11.sp,
                        color: Colors.black,
                        textDecoration: TextDecoration.underline,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
