import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PermissionDialogBoxController extends GetxController {
  void showDialog() {
    Get.defaultDialog(
      title: 'Allow DoctorSpot to access Loaction?',
      middleText: 'This is a sample dialog box.',
      textConfirm: 'OK',
      confirm: TextButton(
        onPressed: () {
          Get.back(); // Close the dialog
        },
        child: const Text('OK'),
      ),
    );
  }
}
