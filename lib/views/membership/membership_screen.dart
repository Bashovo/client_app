import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/widgets/custom_bar.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';
import 'package:client_app/config/sizes.dart';
import 'widgets/membership_types.dart';

class MembershipScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 60.h),
        child: CustomBar(
          title: _screenTitle,
        ),
      ),
      body: MembershipTypes(),
    );
  }

  final Widget _screenTitle = MediumText(
    text: "Membership",
    size: AppFont.xLarge,
  );
}
