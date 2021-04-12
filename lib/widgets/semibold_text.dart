import 'package:client_app/constants/colors_constants.dart';
import 'package:flutter/material.dart';

class SemiBoldText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  SemiBoldText({
    this.text,
    this.size,
    this.color = AppColor.black,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Poppins",
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
