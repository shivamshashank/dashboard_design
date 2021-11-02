import 'package:dashboard_design/core/constants/constant_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customFloatingActionButton() {
  return FloatingActionButton(
    heroTag: null,
    child: Container(
      width: 60,
      height: 60,
      child: Icon(
        Icons.add,
        size: 32.sp,
      ),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            ConstantColors.moderateBlue,
            ConstantColors.welcomeBackgroundColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    ),
    onPressed: () {},
  );
}
