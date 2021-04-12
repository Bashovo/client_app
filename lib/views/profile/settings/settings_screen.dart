import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/controllers/settings_controller.dart';
import 'package:client_app/views/auth/sign_up/widgets/back_arrow.dart';
import 'package:client_app/widgets/custom_bar.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/settings_list.dart';

class SettingsScreen extends StatelessWidget {
  final controller= Get.put(SettingsController());
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
      body: SettingsList(),
    );
  }

  final Widget _screenTitle = MediumText(
    text: "Settings",
    size: AppFont.xLarge,
  );
}
