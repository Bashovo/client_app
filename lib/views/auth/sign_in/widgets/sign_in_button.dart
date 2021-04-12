import 'package:client_app/config/routes.dart';
import 'package:client_app/widgets/custom_button.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: CustomButton(
        buttonText: "SIGN IN",
        onPressed: () => Get.toNamed(Routes.root),
      ),
    );
  }
}
