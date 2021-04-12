import 'package:client_app/config/routes.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/views/auth/sign_in/widgets/language_button.dart';
import 'package:client_app/widgets/custom_bar.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/widgets/custom_button.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/back_arrow.dart';
import 'widgets/fields_section.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 60.h),
        child: CustomBar(
          leading: BackArrow(),
          action: LanguageButton(),
          title: _screenTitle,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                FieldsSection(),
                CustomButton(
                  onPressed: () => Get.toNamed(Routes.verification),
                  buttonText: "SIGN UP",
                ),
                SizedBox(height: 20.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegularText(
                      text: "By clicking sign up you agree to the Tuxedo",
                      size: AppFont.medium,
                    ),
                    SizedBox(height: 3.h),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: RegularText(
                            text: "Privacy Policy",
                            size: AppFont.medium,
                            color: AppColor.red,
                          ),
                        ),
                        RegularText(
                          text: " and ",
                          size: AppFont.medium,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: RegularText(
                            text: "Terms of use",
                            size: AppFont.medium,
                            color: AppColor.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

 final Widget _screenTitle = MediumText(
    text: "Sign up",
    size: AppFont.xLarge,
  );
}
