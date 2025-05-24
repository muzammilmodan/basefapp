
import 'dart:convert';

import 'package:baseapp/core/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'colors.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData = primaryTheme;

  ThemeNotifier(this._themeData);

  Color? themeColor = MyTheme.themeColor;
  Color? themeAccentColor = MyTheme.themeColor;
  int? lightDark = MyTheme.themeColor?.computeLuminance().round();

  getTheme() {
    themeColor = _themeData.primaryColor;
    themeAccentColor = _themeData.secondaryHeaderColor;
    MyTheme.themeColor = themeColor;
    lightDark = themeColor?.computeLuminance().round();
    MyTheme.textColor = lightDark == 1 ? Colors.black : Colors.white;
    MyTheme.paymentYellowColor =
        lightDark == 1 ? Colors.purple : Colors.yellow[200];
    return _themeData;
  }

  setTheme(ThemeData themeData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    themeColor = themeData.primaryColor;
    themeAccentColor = themeData.secondaryHeaderColor;
    _themeData = themeData;
    lightDark = themeColor?.computeLuminance().round();
    MyTheme.textColor = lightDark == 1 ? Colors.black : Colors.white;
    MyTheme.paymentYellowColor =
        lightDark == 1 ? Colors.purple : Colors.yellow[200];
    String userTheme = jsonEncode(<String, int>{
      'primaryColor': themeData.primaryColor.value,
      'accentColor': themeData.secondaryHeaderColor.value,
    });
    prefs.setString("userTheme", userTheme);
    notifyListeners();
  }

  setRainbowTheme(bool isRainbowTheme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    AppConstants.isRainbowColorTheme = isRainbowTheme;
    prefs.setBool("userRainbowTheme", isRainbowTheme);
    notifyListeners();
  }

  doNotifyListener(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }
}
