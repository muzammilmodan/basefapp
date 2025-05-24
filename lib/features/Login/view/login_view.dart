import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class LoginPage extends GetWidget<LoginController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white54, //new line
      body: newLoginWidget(context),
    );
  }

  Widget newLoginWidget(context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(
              children: [

              ],
            ),
          ),
        ),
      ),
    );
  }

}
