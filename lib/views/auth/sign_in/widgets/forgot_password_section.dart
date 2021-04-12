import 'package:client_app/config/routes.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/controllers/auth_controller.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:client_app/widgets/semibold_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordSection extends StatelessWidget {
  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Theme(
          data: ThemeData(
            unselectedWidgetColor: AppColor.red,
          ),
          child: Row(
            children: [
              Obx(
                () => Checkbox(
                  value: controller.remembered.value,
                  activeColor: AppColor.red,
                  onChanged: (bool newVal) {
                    controller.remembered.value = newVal;
                  },
                ),
              ),
              RegularText(
                text: "Remember me",
                size: AppFont.medium,
                color: AppColor.red,
              ),
            ],
          ),
        ),
        FlatButton(
          onPressed: () => Get.toNamed(Routes.forgotPassword),
          child: SemiBoldText(
            text: "Forgot password?",
            size: AppFont.medium,
            color: AppColor.red,
          ),
          highlightColor: AppColor.red.withOpacity(0.1),
          splashColor: AppColor.red.withOpacity(0.2),
        ),
      ],
    );
  }
}
