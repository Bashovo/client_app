import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/views/auth/sign_up/widgets/back_arrow.dart';
import 'package:client_app/widgets/custom_bar.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 60.h),
        child: CustomBar(
          title: _screenTitle,
          leading: BackArrow(),
        ),
      ),
      body: _screenDescription,
    );
  }

  final Widget _screenTitle = MediumText(
    text: "Privacy policy",
    size: AppFont.xLarge,
  );
  final Widget _screenDescription = Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
    child: RegularText(
      text:
          "Integer ac interdum lacus. Nunc porta semper lacus a varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc sagittis consectetur velit, ac gravida nunc gravida et. Vestibulum at eros imperdiet, volutpat nunc vitae, ornare erat. ProinInteger ac interdum lacus. Nunc porta semper lacus a varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc sagittis consectetur velit, ac gravida nunc gravida et. Vestibulum at eros imperdiet, volutpat nunc vitae, ornare erat. Proin interdum aliquet porta. Fusce ut semper ligula.Integer ac interdum lacus. Nunc porta semper lacus a varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc sagittis consectetur velit, ac gravida nunc gravida et. Vestibulum at eros imperdiet, volutpat nunc vitae, ornare erat. Proin interdum aliquet porta. Fusce ut semper ligula.Integer ac interdum lacus. Nunc porta semper lacus a varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc sagittis consectetur velit, ac gravida nunc gravida et. Vestibulum at eros imperdiet, volutpat nunc vitae, ornare erat. Proin interdum aliquet porta. Fusce ut semper ligula. interdum aliquet porta. Fusce ut semper ligula.",
      size: AppFont.medium,
      color: AppColor.darkGrey,
    ),
  );
}
