import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/views/auth/sign_up/widgets/back_arrow.dart';
import 'package:client_app/widgets/custom_bar.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';
import 'widgets/password_field.dart';
import 'widgets/update_button.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 60.h),
        child: CustomBar(
          leading: BackArrow(),
          title: _screenTitle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            PasswordField(),
            SizedBox(height: 20.h),
            PasswordField(),
            SizedBox(height: 20.h),
            UpdateButton(),
          ],
        ),
      ),
    );
  }

  final Widget _screenTitle = MediumText(
    text: "Change password",
    size: AppFont.xLarge,
  );
}
