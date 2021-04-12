import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/controllers/auth_controller.dart';
import 'package:client_app/widgets/custom_field.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordField extends StatelessWidget {
  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MediumText(
          text: "Password",
          size: AppFont.medium,
        ),
        SizedBox(height: 8.h),
        CustomField(
          hint: "Enter your password",
          keyboardType: TextInputType.number,
          fieldController: controller.passwordController,
          validate: (newValue) {
            if (newValue.isEmpty) return "Please enter your password";
            if (newValue.length < 5) return "Too short password";
          },
          onSubmit: (newValue) {
            controller.passwordValidate.value = true;
          },
          autoValidate: controller.phoneValidate.value,
        ),
      ],
    );
  }
}
