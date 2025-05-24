import 'package:flutter/material.dart';

final primaryTheme = ThemeData(
    primaryColor: MyTheme.themeColor, fontFamily: "MaisonNeue");

class MyTheme {
  static const primaryColor = Color(0xFF4b494b);
  static Color? themeColor = Color(0xff3f51b5);
  static Color? backgroundColor = Color(0xFFF5F5F5);
  static Color? textColor = Color(0xFFFFFFFF);
  static const menuHeaderBlueColor = Color(0xFFbde0ff);
  static const menuBodyBlueColor = Color(0xFF416093);
  static const ratingsYellowColor = Color(0xFFFFD700);
  static Color? paymentYellowColor = Color(0xFFFFEB3B);
  static const liveLocationCircleColor = Color(0xFFDEF1FC);
  static const defaultThemeColor = Color(0xff3f51b5);
  static const noConnection = Color(0xffFFFF0000);
  static const blackColor = Color(0xff000000);
  static const redColor = Color(0xfff10a0a);
}
