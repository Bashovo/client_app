import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/controllers/auth_controller.dart';
import 'package:client_app/widgets/custom_field.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FieldsSection extends StatelessWidget {
  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40.h),
        MediumText(
          text: "Sign In",
          color: AppColor.black,
          size: AppFont.large,
        ),
        SizedBox(height: 20.h),
        MediumText(
          text: "Mobile Number",
          size: AppFont.medium,
        ),
        SizedBox(height: 8.h),
        CustomField(
          hint: "Enter your number",
          keyboardType: TextInputType.number,
          fieldController: controller.phoneController,
          prefix: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10.w),
              MediumText(
                text: "+966",
                color: AppColor.red,
                size: AppFont.xLarge,
              ),
              SizedBox(width: 20.h),
            ],
          ),
          validate: (newValue) {
            if (newValue.isEmpty) return "Please enter your number";
            if (newValue.length < 9) return "Invalid phone number";
          },
          onSubmit: (newValue) {
            controller.phoneValidate.value = true;
          },
          autoValidate: controller.phoneValidate.value,
        ),
        SizedBox(height: 20.h),
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
