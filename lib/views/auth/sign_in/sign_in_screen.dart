import 'package:client_app/controllers/auth_controller.dart';
import 'package:client_app/views/auth/sign_in/widgets/sign_up_section.dart';
import 'package:client_app/widgets/custom_bar.dart';
import 'package:flutter/material.dart';
import 'package:client_app/config/sizes.dart';
import 'package:get/get.dart';
import 'widgets/forgot_password_section.dart';
import 'widgets/language_button.dart';
import 'widgets/logo_section.dart';
import 'widgets/sign_in_button.dart';
import 'widgets/fields_section.dart';

class SignInScreen extends StatelessWidget {
  final controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 60.h),
        child: CustomBar(
          action: LanguageButton(),
          hasDivider: false,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              LogoSection(),
              FieldsSection(),
              ForgotPasswordSection(),
              SignInButton(),
              SignUpSection(),
            ],
          ),
        ),
      ),
    );
  }
}
