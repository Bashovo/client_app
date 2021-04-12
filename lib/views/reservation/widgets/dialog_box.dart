import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:client_app/config/sizes.dart';
import 'confirm_button.dart';

Widget dialogBox() {
  Get.dialog(
    Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          height: 230,
          width: Get.width / 1.5,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30.h),
                padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40.h),
                    MediumText(
                        text: "Ihsan\nwould like to chat with you.",
                        size: AppFont.medium,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: ConfirmButton(
                            label: "Decline",
                            buttonColor: AppColor.white,
                            textColor: AppColor.red,
                            onPressed: ()=> Get.close(1),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: ConfirmButton(
                            label: "Accept",
                            buttonColor: AppColor.red,
                            textColor: AppColor.white,
                            onPressed: (){},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 30.w,
                backgroundImage: NetworkImage(
                    "https://dq1eylutsoz4u.cloudfront.net/2016/12/07190305/not-so-nice-nice-guy.jpg"),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
