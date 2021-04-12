import 'package:client_app/constants/assets_constants.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/models/reservation_model.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'dialog_box.dart';

class ReservationList extends StatelessWidget {
  final String label;
  final List<ReservationModel> reservations;
  ReservationList({this.label, this.reservations});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RegularText(
          text: label,
          size: AppFont.medium,
          color: AppColor.xDarkGrey,
        ),
        SizedBox(height: 10.h),
        ...reservations.map((e) => _buildItem(e))
      ],
    );
  }

  _buildItem(ReservationModel item) {
    return GestureDetector(
      onTap: ()=> dialogBox(),
      child: Container(
        height: 120.h,
        margin: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          border: Border.all(color: AppColor.grey08),
        ),
        child: Row(
          children: [
            Container(
              width: 8.w,
              decoration: BoxDecoration(
                  color: label == "old Reservations"
                      ? AppColor.grey09
                      : AppColor.lightRed,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(3.0),
                  bottomLeft: Radius.circular(3.0),
                ),
              ),
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildItemData(AppAsset.table,"Table ${item.tableNumber}"),
                  _buildItemData(AppAsset.group,"${item.peopleNumber} People"),
                  _buildItemData(AppAsset.clock, "${item.date}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemData(String icon, String label) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          SizedBox(width: 15.w),
          label.contains("Table")
              ? MediumText(
                  text: label,
                  color: AppColor.red,
                  size: AppFont.medium,
                )
              : RegularText(
                  text: label,
                  color: AppColor.xDarkGrey,
                  size: AppFont.medium,
                ),
        ],
      ),
    );
  }
}
