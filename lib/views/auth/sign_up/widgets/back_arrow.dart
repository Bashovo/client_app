import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () => Get.back(),
            child: Icon(
              Icons.arrow_back_ios_outlined,
              size: 15.w,
              color: AppColor.red,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
              side: BorderSide(color: AppColor.red),
            ),
            height: 30.h,
            minWidth: 30.w,
            padding: EdgeInsets.all(0.0),
          ),
        ],
      ),
    );
  }
}
