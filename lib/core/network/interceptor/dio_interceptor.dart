import 'dart:developer';

import 'package:baseapp/core/local/shared_pref/helper.dart';
import 'package:baseapp/core/network/ResponseConvert.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as gett;
import 'package:shared_preferences/shared_preferences.dart';

class DioInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("authToken");


    if (token != null && token.isNotEmpty) {
      options.headers = {
        'Content-Type': 'application/json',
        "Accept": "application/json",
        "Authorization": "Bearer $token",
        "Accept-Language": '' //sharedPref.getLocale()
      };
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log("Error[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}");
    final sharedPref = gett.Get.find<SharedPreferenceHelper>();
    if ((err.response?.statusCode ?? 0) == 401 &&
        sharedPref.isLoggedIn == true) {
    //  ResponseConvert.sessionExpiredDialog();
    }
    super.onError(err, handler);
  }
}
