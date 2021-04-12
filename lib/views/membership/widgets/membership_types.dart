import 'package:client_app/constants/assets_constants.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MembershipTypes extends StatelessWidget {
  final List<String> logos = [
    AppAsset.membership1,
    AppAsset.membership2,
    AppAsset.membership3
  ];
  final List<String> labels = ["Tuxedo", "indigo", "Socialista"];
  final List<Color> colors = [AppColor.white, AppColor.blue, AppColor.indigo];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          RegularText(
            text: "Current Reservations",
            size: AppFont.medium,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                padding: EdgeInsets.only(top: 10.h),
                itemBuilder: (context, index) {
                  return _buildMembership(
                    logo: logos[index],
                    label: labels[index],
                    color: colors[index],
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget _buildMembership({String logo, String label, Color color}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 40.h,
          width: 40.w,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 15.h),
          child: SvgPicture.asset(logo, height: 20.h),
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: AppColor.grey04),
            borderRadius: BorderRadius.circular(3.0),
          ),
        ),
        SizedBox(width: 10.w),
        RegularText(
          text: label,
          size: AppFont.medium,
        ),
        Spacer(),
        RegularText(
          text: "2021",
          size: AppFont.small,
        ),
      ],
    );
  }
}
