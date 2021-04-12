import 'package:client_app/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/splash_logo.dart';

class SplashScreen extends StatelessWidget {
  final controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SplashLogo()),
    );
  }
}
