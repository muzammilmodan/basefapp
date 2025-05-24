import 'package:baseapp/utils/common_dialog/common_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonDialog {
  static Future<void> openCustomDialog(BuildContext context,
      {required String title,
      required String description,
      String? okButtonText,
      String? cancelButtonText,
      bool? showNegativeButton,
      Widget? widget,
      required VoidCallback onOkTap}) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      barrierColor: Colors.black54,
      builder: (context) => CommonsDialogWidget(
        widget: widget,
        title: title,
        description: description,
        showNegativeButton: showNegativeButton ?? false,
        positiveBtnText: okButtonText ?? "Confirm".tr,
        negativeBtnText: cancelButtonText ?? "Cancel".tr,
        positiveBtnPressed: onOkTap,
      ),
    );
  }
}
