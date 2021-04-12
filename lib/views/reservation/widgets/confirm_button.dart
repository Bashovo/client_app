import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final Function onPressed;
  final String label;
  ConfirmButton({
    this.buttonColor,
    this.textColor,
    this.onPressed,
    this.label,
  });
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: MediumText(
        text: label,
        color: textColor,
        size: AppFont.medium,
      ),
      color: buttonColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.0),
          side: BorderSide(color: AppColor.red)),
    );
  }
}
