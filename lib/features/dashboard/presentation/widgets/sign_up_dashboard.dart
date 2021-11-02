import 'package:dashboard_design/core/constants/app_text_style.dart';
import 'package:dashboard_design/core/constants/constant_colors.dart';
import 'package:dashboard_design/core/constants/strings.dart';
import 'package:dashboard_design/core/widgets/custom_sign_up_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget signUpDashboard(BuildContext context) {
  return Expanded(
    flex: 8,
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
          child: Column(
            children: [
              SizedBox(height: 0.08.sh),
              Text(
                Strings.dashboard,
                style: AppTextStyle.customTextStyle(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 0.025.sh,
                  horizontal: 0.1.sw,
                ),
                child: const Divider(
                  color: ConstantColors.dividerColor,
                  thickness: 2,
                ),
              ),
              Text(
                Strings.forOrdinaryPeople,
                style: AppTextStyle.customTextStyle(
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 0.03.sh),
              Text(
                Strings.getStartedSlogan,
                style: AppTextStyle.customTextStyle(
                  fontSize: 14.sp,
                  color: ConstantColors.moderateBlue,
                ),
              ),
              SizedBox(height: 0.05.sh),
              customSignUpButton(
                context: context,
                imageLabel: Strings.google.toLowerCase(),
                buttonLabel: Strings.signUpWith + Strings.google,
              ),
              customSignUpButton(
                context: context,
                imageLabel: Strings.facebook.toLowerCase(),
                buttonLabel: Strings.signUpWith + Strings.facebook,
              ),
              customSignUpButton(
                context: context,
                imageLabel: Strings.apple.toLowerCase(),
                buttonLabel: Strings.signUpWith + Strings.apple,
              ),
              customSignUpButton(
                context: context,
                imageLabel: Strings.email.toLowerCase(),
                buttonLabel: Strings.signUpWith + Strings.email,
              ),
              SizedBox(height: 0.04.sh),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: Strings.alreadyHaveAnAccount,
                      style: AppTextStyle.customTextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                    TextSpan(
                      text: Strings.signIn,
                      style: AppTextStyle.customTextStyle(
                        fontSize: 14.sp,
                        color: ConstantColors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
