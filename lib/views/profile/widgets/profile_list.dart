import 'package:client_app/config/routes.dart';
import 'package:client_app/constants/assets_constants.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/controllers/profile_controller.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class ProfileList extends StatelessWidget {
  final List<String> logos = [
    AppAsset.user,
    AppAsset.key,
    AppAsset.reservations,
    AppAsset.chat,
    AppAsset.tune
  ];
  final List<String> labels = [
    "Edit Profile",
    "Password",
    "Reservation wallet",
    "Chat settings",
    "Settings"
  ];
  final controller = Get.find<ProfileController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: logos.length,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      itemBuilder: (context, index) => _buildItem(
        logo: logos[index],
        label: labels[index],
      ),
    ));
  }

  Widget _buildItem({String logo, String label}) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Row(
        children: [
          Container(
            height: 40.h,
            width: 40.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                border: Border.all(color: AppColor.grey04)),
            child: SvgPicture.asset(logo, color: AppColor.red),
          ),
          SizedBox(width: 10.w),
          RegularText(
            text: label,
            size: AppFont.medium,
          ),
          Spacer(),
          label == "Chat settings"
              ? Obx(
                  () => FlutterSwitch(
                    width: 50.w,
                    height: 30.h,
                    value: controller.chatSwitch.value,
                    borderRadius: 30.0,
                    activeColor: AppColor.green,
                    onToggle: (val) {
                      controller.chatSwitch.value = val;
                    },
                  ),
                )
              : GestureDetector(
                  child: MediumText(
                    text: label == "Password" ? "Edit" : "View",
                    size: AppFont.medium,
                    color: AppColor.red,
                  ),
                  onTap: () {
                    if (label == "Password") Get.toNamed(Routes.changePassword);
                  },
                )
        ],
      ),
    );
  }
}
