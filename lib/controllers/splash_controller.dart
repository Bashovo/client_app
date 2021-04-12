import 'package:client_app/config/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      Duration(seconds: 2),
      () => Get.toNamed(Routes.signIn),
    );
    super.onInit();
  }
}
