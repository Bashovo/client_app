import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/controllers/profile_controller.dart';
import 'package:client_app/widgets/custom_bar.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/profile_list.dart';
import 'widgets/user_info.dart';

class ProfileScreen extends StatelessWidget {
  final controller= Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 60.h),
        child: CustomBar(
          title: _screenTitle,
        ),
      ),
      body: Column(
        children: [
          UserInfo(),
          Divider(
              color: AppColor.grey03.withOpacity(0.2),
              thickness: 0.5,
              height: 0.0),
          ProfileList(),
        ],
      ),
    );
  }

  final Widget _screenTitle = MediumText(
    text: "Profile",
    size: AppFont.xLarge,
  );
}
