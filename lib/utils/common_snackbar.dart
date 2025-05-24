import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constants/app_text_styles.dart';


class CommonSnackbar {
  static void showErrorSnackbar({
    required String message,
    String? title,
  }) {
    Get.showSnackbar(
      GetSnackBar(
        titleText: Text(
          title ?? 'Error',
          style: AppTextStyles.style16White600,
        ),
        backgroundColor: Colors.red,
        messageText: Text(
          message,
          style: AppTextStyles.style12White,
        ),
        duration: const Duration(milliseconds: 1500),
      ),
    );
  }

  static void showSuccessSnackbar({
    required String message,
    String? title,
  }) {
    Get.showSnackbar(
      GetSnackBar(
        titleText: Text(
          title ?? 'Success',
          style: AppTextStyles.style16White600,
        ),
        backgroundColor: Colors.green,
        messageText: Text(
          message,
          style: AppTextStyles.style12White,
        ),
        duration: const Duration(milliseconds: 1500),
      ),
    );
  }

}
