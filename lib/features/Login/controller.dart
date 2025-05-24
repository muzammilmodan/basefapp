
import 'dart:convert';

import 'package:baseapp/utils/common_dialog/common_dialog.dart';
import 'package:baseapp/utils/common_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/local/shared_pref/helper.dart';
import '../../core/network/ResponseConvert.dart';
import '../../utils/StringUtil.dart';
import 'data/repository/login_repository.dart';


class LoginController extends GetxController {
  final sharedPref = Get.find<SharedPreferenceHelper>();
  final repository = Get.find<LoginRepository>();

  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final keyLoader = GlobalKey<State>();

  final version = "".obs;

  final controllerEmail = new TextEditingController();
  final controllerPassword = new TextEditingController();

  final isHidden = false.obs;

  final firstTime = true.obs;
  final isRemember = false.obs;


  void togglePasswordView() {
    isHidden.value = !(isHidden.value);
    isHidden.refresh();
  }

  void callLoginSubmit() async {
    if (controllerEmail.text.isEmpty) {
      CommonSnackbar.showErrorSnackbar(message: "Please enter your User Name");
      return;
    } else if (controllerPassword.text.isEmpty) {
      CommonSnackbar.showErrorSnackbar(message: "Please enter your Password");
      return;
    }

    callLoginApi();
  }

  void callLoginApi() async {
    try {

      final requestData = jsonEncode(<String, String>{
        "Username": controllerEmail.text.toLowerCase(),
        "Password": controllerPassword.text,
        "LoginDateTime": DateTime.now().toIso8601String(),
      });

      final jsonRequestData = jsonEncode(<String, String>{
        "requestString": "",
        "requestData": StringUtil.encrypt(requestData),
      });

      await repository
          .callLoginApiRequest(jsonRequestData)
          .then((valueResponse) async {

        if (valueResponse.status == "S") {
          CommonSnackbar.showSuccessSnackbar(
              message: "You've logged in successfully! 🎉 Welcome back!");

          final responseData = jsonDecode(StringUtil.decrypt(valueResponse.data));

          sharedPref.saveIsLoggedIn(true);

        } else if (valueResponse.status == "F") {
          if (valueResponse.message ==
              'You are not authorised. Please try again.') {

          }

          onLoginError(valueResponse.message ?? "Incorrect Email or Password.");
        }
      });
    } catch (e) {

    }
  }

  void onLoginError(String? error) {
    String? strValues = error?.replaceAll("Exception: ", "");

    CommonDialog.openCustomDialog(Get.context!,
        title: "Alert",
        description: strValues ?? 'Incorrect Email or Password.', onOkTap: () {
      Get.back();
    }, okButtonText: "OK");
  }



  @override
  void onInit() {

    super.onInit();

  }


}
