import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:client_app/widgets/semibold_text.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/material.dart';

class CodeSent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Row(
        children: [
          RegularText(
            text: "Code sent to your mobile",
            size: AppFont.xLarge,
          ),
          SemiBoldText(
            text: "+966 123456789",
            color: AppColor.red,
            size: AppFont.xLarge,
          ),
        ],
      ),
    );
  }
}
