import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  // language dropDown value
  RxString selectedLanguage = "".obs;
  // remember me radioButton
  RxBool remembered= false.obs;
  // gender dropDown value
  RxString selectedGender= "Male".obs;

  // sign in
  RxBool phoneValidate = false.obs;
  RxBool passwordValidate = false.obs;

  // auth controllers
  TextEditingController phoneController;
  TextEditingController passwordController;
  TextEditingController pinFieldsController;

  @override
  void onInit() {
    phoneController= TextEditingController();
    passwordController= TextEditingController();
    passwordController= TextEditingController();
    selectedLanguage.value= "English";
    super.onInit();
  }
}
