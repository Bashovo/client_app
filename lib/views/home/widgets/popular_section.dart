import 'package:client_app/constants/assets_constants.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/widgets/semibold_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularSection extends StatelessWidget {
  final List<String> resturantImage = [AppAsset.res4, AppAsset.res5];
  final List<String> resturantName = ["Lisin - Diyafah", "Lisin - Diyafah"];
  final List<String> resturantDescription = [
    "Diyafah Center",
    "Diyafah Center"
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          MediumText(
            text: "Popular",
            size: AppFont.medium,
            color: AppColor.xDarkGrey,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: resturantImage.length,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(bottom: 10.h),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Stack(
                      children: [
                        Image.asset(resturantImage[index]),
                        Positioned(
                          bottom: 10.h,
                          left: 10.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SemiBoldText(
                                text: resturantName[index],
                                size: AppFont.medium,
                                color: AppColor.white,
                              ),
                              SizedBox(height: 3.h),
                              MediumText(
                                text: resturantDescription[index],
                                size: AppFont.xSmall,
                                color: AppColor.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
