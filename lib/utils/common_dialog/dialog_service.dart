import 'package:baseapp/utils/common_dialog/custom_dialog.dart';
import 'package:flutter/material.dart';

class DialogService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static void showCustomDialog({
    Widget? contentWidget,
    String? title,
    List<Widget>? actions,
    WidgetBuilder? builder,
  }) {
    showDialog(
      context: navigatorKey.currentState!.overlay!.context,
      builder: builder ?? (context) {
        return CustomDialog(
          title: title,
          contentWidget: contentWidget,
          actions: actions,
        );
      },
    );
  }

  static void hideDialog() {
    navigatorKey.currentState!.pop();
  }
}
