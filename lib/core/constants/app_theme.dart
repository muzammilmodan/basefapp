import 'package:flutter/material.dart';


import 'app_text_styles.dart';
import 'colors.dart';

final ThemeData themeData = ThemeData(
  fontFamily: AppTextStyles.fontFamily,
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.white,
);

final ThemeData themeDataDark = ThemeData(
  fontFamily: AppTextStyles.fontFamily,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.white,
);
