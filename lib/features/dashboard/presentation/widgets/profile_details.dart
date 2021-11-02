import 'package:dashboard_design/core/constants/constant_colors.dart';
import 'package:dashboard_design/core/constants/strings.dart';
import 'package:dashboard_design/core/widgets/profile_detail_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget profileDetails() {
  return Expanded(
    flex: 42,
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
          child: Padding(
            padding: EdgeInsets.fromLTRB(0.06.sw, 0.05.sh, 0.06.sw, 0),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                profileDetailContainer(
                  imageLabel: "location",
                  label: Strings.location,
                  value: Strings.capeTown,
                ),
                profileDetailContainer(
                  imageLabel: "clock",
                  label: Strings.localTime,
                  value: Strings.time,
                ),
                profileDetailContainer(
                  imageLabel: "calendar",
                  label: Strings.agenda,
                  value: Strings.nextMeeting,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
