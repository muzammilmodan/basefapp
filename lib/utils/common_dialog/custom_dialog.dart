import 'package:baseapp/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CustomDialog extends StatelessWidget {
  String? title;
  List<Widget>? actions;

  //
  VoidCallback? onConfirm;
  VoidCallback? onCancel;
  Widget? cancelTitle;
  Widget? confirmTitle;
  Widget? contentWidget;

  CustomDialog({
    this.title,

    this.contentWidget,
    this.actions,
    this.onConfirm,
    this.onCancel,
    this.cancelTitle,
    this.confirmTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title ?? ""),
      content: contentWidget,
      actions: actions ?? [
            TextButton(
              onPressed: (){
                onCancel ?? Get.back();
              },
              child: cancelTitle ??  Text('Cancel',style: AppTextStyles.alertNegativeTextStyle),
            ),
            TextButton(
              onPressed: onConfirm,
              child: confirmTitle ?? Text('Confirm',style: AppTextStyles.alertPositiveTextStyle),
            ),
          ],
    );
  }
}
