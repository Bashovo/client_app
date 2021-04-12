import 'package:client_app/constants/assets_constants.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:client_app/widgets/semibold_text.dart';
import 'package:flutter/material.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 15.w),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30.w,
            backgroundImage: NetworkImage(
                "https://data.junkee.com/wp-content/uploads/2017/07/nice-guy-junkee.jpg"),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SemiBoldText(
                text: "Saleem Salman",
                size: AppFont.medium,
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  SvgPicture.asset(AppAsset.phone),
                  RegularText(
                    text: " +966 123456789",
                    color: AppColor.grey06,
                    size: AppFont.xSmall,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 30.h,
            width: 60.w,
            decoration: BoxDecoration(
              color: AppColor.orange,
              borderRadius: BorderRadius.circular(3.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppAsset.prize),
                SizedBox(width: 5.w),
                RegularText(
                  text: "Gold",
                  color: AppColor.white,
                  size: AppFont.medium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
