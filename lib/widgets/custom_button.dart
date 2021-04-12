import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/widgets/semibold_text.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color textColor;
  final double elevation;
  final GlobalKey<FormState> key;
  final Function onPressed;
  CustomButton({
    this.buttonText,
    this.textColor = AppColor.white,
    this.elevation = 0.0,
    this.key,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: SemiBoldText(
        text: buttonText,
        color: textColor,
        size: AppFont.xLarge,
      ),
      color: AppColor.red,
      minWidth: Get.width,
      height: 45.h,
      elevation: elevation,
      highlightElevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
    );
  }
}
