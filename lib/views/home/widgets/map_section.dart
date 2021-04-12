import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/material.dart';

class MapSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      margin: EdgeInsets.only(top: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: AppColor.grey02,
      ),
    );
  }
}
