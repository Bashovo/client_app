import 'package:client_app/constants/assets_constants.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/controllers/home_controller.dart';
import 'package:client_app/widgets/custom_field.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:client_app/widgets/semibold_text.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HeaderSection extends StatelessWidget {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                  //  SvgPicture.asset(AppAsset.membership1),
                    SemiBoldText(
                      text: "Hello Saleem",
                      size: 18.w,
                      color: AppColor.red,
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    SvgPicture.asset(AppAsset.marker),
                    SizedBox(width: 5.w),
                    RegularText(
                      text: "Riyadh, Saudi Arabia",
                      size: AppFont.medium,
                    ),
                    Icon(Icons.keyboard_arrow_down,
                        color: AppColor.xDarkGrey, size: 15.w)
                  ],
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                SvgPicture.asset(AppAsset.chat),
                SizedBox(width: 10.w),
                CircleAvatar(
                    radius: 20.w,
                    backgroundImage: NetworkImage(
                        "https://data.junkee.com/wp-content/uploads/2017/07/nice-guy-junkee.jpg")),
              ],
            ),
          ],
        ),
        SizedBox(height: 20.h),
        CustomField(
          fieldController: controller.searchController,
          hint: "Search for a restaraunt",
          prefix: Icon(
            Icons.search,
            color: AppColor.xDarkGrey.withOpacity(0.6),
            size: 20.w,
          ),
          suffix: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAsset.tune, color: AppColor.xDarkGrey),
            ],
          ),
          autoValidate: false,
        ),
      ],
    );
  }
}
