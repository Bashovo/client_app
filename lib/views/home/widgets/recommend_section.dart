import 'package:client_app/constants/assets_constants.dart';
import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/widgets/regular_text.dart';
import 'package:client_app/widgets/semibold_text.dart';
import 'package:flutter/material.dart';

class RecommendSection extends StatelessWidget {
  final List<String> resturantImage = [AppAsset.res1, AppAsset.res2, AppAsset.res3];
  final List<String> resturantName = ["Tuxedo","Lisin - Diyafah","Lisin - Diyafah","Lisin - Diyafah"];
  final List<String> resturantDescription= ["Diyafah Center","Diyafah Center","Diyafah Center","Diyafah Center"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MediumText(
                text: "Recommend",
                size: AppFont.medium,
                color: AppColor.xDarkGrey,
              ),
              RegularText(
                text: "See All",
                size: AppFont.medium,
                color: AppColor.white,
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Expanded(
            child: ListView.builder(
                itemCount: resturantImage.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10.w),
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
          )
        ],
      ),
    );
  }
}
