import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class FieldsSection extends StatelessWidget {
  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.h),
        PinCodeTextField(
          appContext: context,
          length: 4,
          obscureText: false,
          animationType: AnimationType.fade,
          keyboardType: TextInputType.number,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 55.h,
            fieldWidth: 55.w,
            activeFillColor: AppColor.grey04,
            inactiveColor: AppColor.lightGrey,
            activeColor: AppColor.grey04,
            inactiveFillColor: AppColor.white,
            selectedFillColor: AppColor.grey04,
            selectedColor: AppColor.lightGrey,
            borderWidth: 0.0,
          ),
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: AppColor.transparent,
          enableActiveFill: true,
          controller: controller.pinFieldsController,
          onCompleted: (v) {
            print("Completed");
          },
          onChanged: (value) {
            print(value);
          },
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
