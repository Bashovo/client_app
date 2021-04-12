import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:client_app/widgets/semibold_text.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/material.dart';

class ResendCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Row(
        children: [
          RegularText(
            text: "Don't receive ",
            size: AppFont.xLarge,
          ),
          SemiBoldText(
            text: "Resend",
            color: AppColor.red,
            size: AppFont.xLarge,
          ),
        ],
      ),
    );
  }
}
