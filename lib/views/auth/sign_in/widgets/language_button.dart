import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/controllers/auth_controller.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageButton extends StatelessWidget {
  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80.w,
            height: 30.h,
            margin: EdgeInsets.only(right: 15.w),
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              color: AppColor.red,
              borderRadius: BorderRadius.circular(3.0),
            ),
            child: DropdownButton(
              items: ["English", "العربية"]
                  .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                      child: RegularText(
                          text: item, color: AppColor.white, size: AppFont.medium),
                      value: item))
                  .toList(),
              value: controller.selectedLanguage.value,
              onChanged: (value) {
                controller.selectedLanguage.value= value;
              },
              underline: Text(''),
              icon: Icon(Icons.keyboard_arrow_down,
                  color: AppColor.white, size: 20.w),
              style: TextStyle(color: AppColor.black),
              isExpanded: true,
              dropdownColor: AppColor.black,
            ),
          ),
        ],
      ),
    );
  }
}
