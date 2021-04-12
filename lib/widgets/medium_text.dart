import 'package:client_app/constants/colors_constants.dart';
import 'package:flutter/material.dart';

class MediumText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  MediumText({
    this.text,
    this.size,
    this.color = AppColor.black,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "Poppins",
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
