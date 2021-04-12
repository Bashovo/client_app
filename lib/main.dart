import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'config/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return ScreenUtilInit(
      designSize: Size(411.4, 731.4),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Client App",
        initialRoute: '/',
        getPages: AppPages.getPages(),
        popGesture: true,
      ),
    );
  }
}
