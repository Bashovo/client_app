import 'package:client_app/constants/assets_constants.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/controllers/auth_controller.dart';
import 'package:client_app/widgets/custom_field.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FieldsSection extends StatelessWidget {
  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 1.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MediumText(
                      text: "First Name",
                      size: AppFont.medium,
                    ),
                    SizedBox(height: 8.h),
                    CustomField(
                      hint: "First Name",
                      keyboardType: TextInputType.number,
                      fieldController: controller.phoneController,
                      validate: (newValue) {
                        if (newValue.isEmpty) return "Please enter your number";
                        if (newValue.length < 9) return "Invalid phone number";
                      },
                      onSubmit: (newValue) {
                        controller.phoneValidate.value = true;
                      },
                      autoValidate: controller.phoneValidate.value,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MediumText(
                      text: "Last Name",
                      size: AppFont.medium,
                    ),
                    SizedBox(height: 8.h),
                    CustomField(
                      hint: "Last Name",
                      keyboardType: TextInputType.number,
                      fieldController: controller.phoneController,
                      validate: (newValue) {
                        if (newValue.isEmpty) return "Please enter your number";
                        if (newValue.length < 9) return "Invalid phone number";
                      },
                      onSubmit: (newValue) {
                        controller.phoneValidate.value = true;
                      },
                      autoValidate: controller.phoneValidate.value,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          MediumText(
            text: "Email Address",
            size: AppFont.medium,
          ),
          SizedBox(height: 8.h),
          CustomField(
            hint: "Enter your email address",
            keyboardType: TextInputType.number,
            fieldController: controller.phoneController,
            validate: (newValue) {
              if (newValue.isEmpty) return "Please enter your number";
              if (newValue.length < 9) return "Invalid phone number";
            },
            onSubmit: (newValue) {
              controller.phoneValidate.value = true;
            },
            autoValidate: controller.phoneValidate.value,
          ),
          SizedBox(height: 20.h),
          MediumText(
            text: "Mobile Number",
            size: AppFont.medium,
          ),
          SizedBox(height: 8.h),
          CustomField(
            hint: "Enter your mobile number",
            keyboardType: TextInputType.number,
            fieldController: controller.phoneController,
            validate: (newValue) {
              if (newValue.isEmpty) return "Please enter your number";
              if (newValue.length < 9) return "Invalid phone number";
            },
            onSubmit: (newValue) {
              controller.phoneValidate.value = true;
            },
            autoValidate: controller.phoneValidate.value,
          ),
          SizedBox(height: 20.h),
          MediumText(
            text: "Password",
            size: AppFont.medium,
          ),
          SizedBox(height: 8.h),
          CustomField(
            hint: "Enter your password",
            keyboardType: TextInputType.number,
            fieldController: controller.phoneController,
            validate: (newValue) {
              if (newValue.isEmpty) return "Please enter your number";
              if (newValue.length < 9) return "Invalid phone number";
            },
            onSubmit: (newValue) {
              controller.phoneValidate.value = true;
            },
            autoValidate: controller.phoneValidate.value,
          ),
          SizedBox(height: 20.h),
          MediumText(
            text: "Password confirmation",
            size: AppFont.medium,
          ),
          SizedBox(height: 8.h),
          CustomField(
            hint: "Enter your password",
            keyboardType: TextInputType.number,
            fieldController: controller.phoneController,
            validate: (newValue) {
              if (newValue.isEmpty) return "Please enter your number";
              if (newValue.length < 9) return "Invalid phone number";
            },
            onSubmit: (newValue) {
              controller.phoneValidate.value = true;
            },
            autoValidate: controller.phoneValidate.value,
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              _birthDatePicker(),
              SizedBox(width: 10.w),
              _genderDropDown(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _birthDatePicker() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MediumText(
            text: "Date of birth",
            size: AppFont.medium,
          ),
          SizedBox(height: 8.h),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.centerRight,
              height: 40.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                border: Border.all(color: AppColor.grey02),
              ),
              child: SvgPicture.asset(AppAsset.calendar),
            ),
          ),
        ],
      ),
    );
  }

  Widget _genderDropDown() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MediumText(
            text: "Gender",
            size: AppFont.medium,
          ),
          SizedBox(height: 8.h),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.0),
              border: Border.all(color: AppColor.grey02),
            ),
            child: DropdownButton<String>(
              items: ["Male", "Female"]
                  .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                      child: RegularText(
                          text: item,
                          color: AppColor.black,
                          size: AppFont.medium),
                      value: item))
                  .toList(),
              value: controller.selectedGender.value,
              onChanged: (value) {
                controller.selectedGender.value = value;
              },
              underline: Text(''),
              icon: Icon(Icons.keyboard_arrow_down,
                  color: AppColor.red, size: 20.w),
              style: TextStyle(color: Colors.red),
              isExpanded: true,
              dropdownColor: Colors.white,
              elevation: 2,
              hint: Text("Please choose a langauage"),
            ),
          ),
        ],
      ),
    );
  }
}
