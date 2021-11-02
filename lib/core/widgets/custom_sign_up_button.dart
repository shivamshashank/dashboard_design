import 'package:dashboard_design/core/constants/app_text_style.dart';
import 'package:dashboard_design/core/constants/constant_colors.dart';
import 'package:dashboard_design/core/constants/pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customSignUpButton({
  required BuildContext context,
  required String imageLabel,
  required String buttonLabel,
}) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(
      context,
      Pages.profilePage,
    ),
    child: Container(
      width: 0.84.sw,
      height: 0.06.sh,
      margin: EdgeInsets.only(bottom: 12.sp),
      decoration: BoxDecoration(
        color: ConstantColors.moderateBlue,
        borderRadius: BorderRadius.circular(24.sp),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.08.sw),
        child: Row(
          children: [
            Image.asset(
              "assets/images/$imageLabel.png",
              width: 26.sp,
            ),
            SizedBox(width: 0.08.sw),
            Text(
              buttonLabel,
              style: AppTextStyle.customTextStyle(
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
