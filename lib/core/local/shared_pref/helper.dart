import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:get/get.dart';
import 'pref_keys.dart';
import 'preference.dart';

class SharedPreferenceHelper {
  final Preference _sharedPreference = Get.find<Preference>();

  //Auth
  Future<void> saveIsLoggedIn(bool value) async {
    await _sharedPreference.setBool(PrefKeys.isLoggedIn, value);
  }

  bool get isLoggedIn {
    return _sharedPreference.getBool(PrefKeys.isLoggedIn) ?? false;
  }


  //Todo: Driver Location............................... End

  Future<void> clear() async {

    await _sharedPreference.clear();

  }
}
