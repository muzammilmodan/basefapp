import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';


class AppTextStyles {
  static String fontFamily = 'Graphik';

  static TextStyle style12LightBlack400 = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.textFieldsLabelColor);

  static TextStyle style12LightBlack500 = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.textFieldsLabelColor);

  static TextStyle style12Black600 = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.tabbarBlack);

  static TextStyle style14LightBlack400 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.textFieldsLabelColor);

  static TextStyle style14Black500 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.colorPrimary);

  static TextStyle style16LightBlack400 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.textFieldsLabelColor);

  static TextStyle style16PrimaryColor400WithUnderLine = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline,
      color: AppColors.colorPrimary);

  static TextStyle style15White600 = TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white);

  static TextStyle style16White600 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.buttonLabelColor);

  static TextStyle style16Black600 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.textFieldsLabelColor);

  static TextStyle style20Black600 = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.black08000E);

  static TextStyle style28Black600 = TextStyle(
      fontSize: 28.sp, fontWeight: FontWeight.w600, color: AppColors.textColor);


  static TextStyle style16Black500 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColors.textColor,
  );

  static TextStyle style20Black500 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
    color: AppColors.black08000E,
  );

  static TextStyle style16BlackWithOpacity500 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColors.textColor.withOpacity(0.5),
  );

  static TextStyle style16PrimaryColor600 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: AppColors.colorPrimary,
  );

  static TextStyle style16BlackAppColor600 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: AppColors.black08000E,
  );
  static TextStyle style14BlackAppColor500 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: AppColors.black08000E,
  );
  static TextStyle style12BlackAppColor400 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.black08000E,
  );

  static TextStyle style12White =
      TextStyle(fontSize: 12.sp, color: AppColors.white);

  static TextStyle style18FontBold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.sp,
  );
  static TextStyle style16ColorPrimary600 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: AppColors.colorPrimary,
  );

  static TextStyle textStyle16Black400 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColors.black,
  );


  static TextStyle alertPositiveTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16.sp,
    color: Colors.green,
  );

  static TextStyle alertNegativeTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16.sp,
    color: Colors.red,
  );
}
