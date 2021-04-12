import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/controllers/home_controller.dart';
import 'package:client_app/config/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/header_section.dart';
import 'widgets/map_section.dart';
import 'widgets/popular_section.dart';
import 'widgets/recommend_section.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            HeaderSection(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    RecommendSection(),
                    MapSection(),
                    PopularSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
