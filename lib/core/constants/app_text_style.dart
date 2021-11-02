import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static customTextStyle({
    required double fontSize,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.white,
    TextDecoration textDecoration = TextDecoration.none,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: "Poppins",
        decoration: textDecoration,
      );
}
