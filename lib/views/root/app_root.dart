import 'package:client_app/constants/assets_constants.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/controllers/root_controller.dart';
import 'package:client_app/views/home/home_screen.dart';
import 'package:client_app/views/membership/membership_screen.dart';
import 'package:client_app/views/profile/profile_screen.dart';
import 'package:client_app/views/reservation/reservation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:client_app/config/sizes.dart';

class AppRoot extends StatelessWidget {
  final controller = Get.put(RootController());
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: PageView(
          controller: controller.pageController,
          children: [
            HomeScreen(),
            ReservationScreen(),
            Container(color: Colors.green),
            ProfileScreen(),
            MembershipScreen(),
          ],
          onPageChanged: (int index) => controller.pageIndex.value = index,
          physics: NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.pageIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: SvgPicture.asset(AppAsset.home,
                    color: controller.pageIndex.value == 0
                        ? AppColor.red
                        : AppColor.grey05),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: SvgPicture.asset(
                  AppAsset.reservations,
                  color: controller.pageIndex.value == 1
                      ? AppColor.red
                      : AppColor.grey05,
                ),
              ),
              label: "Reservations",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: SvgPicture.asset(
                  AppAsset.news,
                  color: controller.pageIndex.value == 2
                      ? AppColor.red
                      : AppColor.grey05,
                ),
              ),
              label: "News",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: SvgPicture.asset(
                  AppAsset.profile,
                  color: controller.pageIndex.value == 3
                      ? AppColor.red
                      : AppColor.grey05,
                ),
              ),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: SvgPicture.asset(
                  AppAsset.membership,
                  color: controller.pageIndex.value == 4
                      ? AppColor.red
                      : AppColor.grey05,
                ),
              ),
              label: "Membership",
            ),
          ],
          unselectedItemColor: AppColor.grey05,
          selectedItemColor: AppColor.red,
          selectedFontSize: AppFont.small,
          unselectedFontSize: AppFont.small,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColor.white,
          elevation: 5.0,
          onTap: (index) {
            controller.pageIndex.value = index;
            index = controller.pageIndex.value;
            controller.pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
        ),
      ),
    );
  }
}
