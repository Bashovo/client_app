import 'package:client_app/constants/assets_constants.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/controllers/reservation_controller.dart';
import 'package:client_app/widgets/custom_bar.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'widgets/reservation_list.dart';

class ReservationScreen extends StatelessWidget {
  final controller = Get.put(ReservationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 60.h),
        child: CustomBar(
          action: _action,
          title: _screenTitle,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            ReservationList(
              label: "Current Reservations",
              reservations: controller.currentReservations,
            ),
            SizedBox(height: 20.h),
            ReservationList(
              label: "old Reservations",
              reservations: controller.oldReservations,
            ),
          ],
        ),
      ),
    );
  }

  final Widget _action = Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.w),
    child: Row(
      children: [
        SvgPicture.asset(AppAsset.chat),
        SizedBox(width: 10.w),
        FlutterSwitch(
          width: 42.w,
          height: 30.h,
          value: true,
          borderRadius: 30.0,
          toggleSize: 17.w,
          activeColor: AppColor.green,
          onToggle: (val) {},
        ),
      ],
    ),
  );
  final Widget _screenTitle = MediumText(
    text: "Reservations",
    size: AppFont.xLarge,
  );
}
