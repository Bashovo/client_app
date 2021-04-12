import 'package:client_app/config/routes.dart';
import 'package:client_app/constants/assets_constants.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/controllers/settings_controller.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SettingsList extends StatelessWidget {
  final List<String> logos = [
    AppAsset.about,
    AppAsset.service,
    AppAsset.privacy,
    AppAsset.terms,
    AppAsset.language,
    AppAsset.logo
  ];
  final List<String> labels = [
    "About Tuxedo",
    "Customer service",
    "Privacy policy",
    "Client terms",
    "Language",
    "Logout"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: logos.length,
      itemBuilder: (context, index) => _buildItem(
        logo: logos[index],
        label: labels[index],
      ),
    );
  }

  Widget _buildItem({String logo, String label}) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: InkWell(
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
            label == "Logout"
                ? Text('')
                : label == "Language"
                    ? Row(
                        children: [
                          languageButton("🇸🇦", "  العربية"),
                          SizedBox(width: 25.w),
                          languageButton("🇺🇸", "  English"),
                        ],
                      )
                    : Icon(Icons.arrow_forward_ios, color: AppColor.grey07)
          ],
        ),
        onTap: () {
          if (label == "About Tuxedo")
            Get.toNamed(Routes.aboutTuxedo);
          else if (label == "Privacy policy")
            Get.toNamed(Routes.privacyPolicy);
          else if (label == "Client terms") Get.toNamed(Routes.clientTerms);
        },
      ),
    );
  }

  Widget languageButton(String flag, String lang) {
    final controller = Get.find<SettingsController>();
    bool selection;
    if (flag == "🇸🇦") {
      if (controller.arabicSelection.value)
        selection = true;
      else
        selection = false;
    } else {
      if (controller.englishSelection.value)
        selection = true;
      else
        selection = false;
    }
    return Obx(
      () => GestureDetector(
        child: Row(
          children: [
            Text(
              flag,
              style: TextStyle(
                fontSize: 18.w,
                color: selection
                    ? AppColor.black
                    : AppColor.black.withOpacity(0.5),
              ),
            ),
            Text(
              lang,
              style: TextStyle(
                fontSize: 9.w,
                color: selection
                    ? AppColor.black
                    : AppColor.black.withOpacity(0.5),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
