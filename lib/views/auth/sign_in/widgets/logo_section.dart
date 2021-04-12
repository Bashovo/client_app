import 'package:client_app/constants/assets_constants.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppAsset.logo, height: 130.h),
        MediumText(
          text: "Redefining elegance!",
          color: AppColor.grey01,
          size: AppFont.xLarge,
        ),
      ],
    );
  }
}
