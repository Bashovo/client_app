import 'package:client_app/config/routes.dart';
import 'package:client_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonText: "UPDATE",
      onPressed: () => Get.toNamed(Routes.root),
    );
  }
}
