import 'package:client_app/config/routes.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 150.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RegularText(
            text: "Don't have an account?",
            size: AppFont.medium,
          ),
          GestureDetector(
            onTap: ()=> Get.toNamed(Routes.signUp),
            child: MediumText(
              text: " Sign up",
              color: AppColor.red,
              size: AppFont.medium,
            ),
          ),
        ],
      ),
    );
  }
}
