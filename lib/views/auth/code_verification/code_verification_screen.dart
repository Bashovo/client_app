import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/views/auth/sign_up/widgets/back_arrow.dart';
import 'package:client_app/widgets/custom_bar.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';
import 'widgets/code_sent.dart';
import 'widgets/fields_section.dart';
import 'widgets/resend_code.dart';
import 'widgets/verifiy_button.dart';

class CodeVerificationScreen extends StatelessWidget {
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
            CodeSent(),
            FieldsSection(),
            VerifyButton(),
            ResendCode(),
          ],
        ),
      ),
    );
  }

  final Widget _screenTitle = MediumText(
    text: "Verification",
    size: AppFont.xLarge,
  );
}
