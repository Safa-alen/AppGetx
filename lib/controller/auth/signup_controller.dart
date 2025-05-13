import 'package:applicationgetx/core/constant/route.dart';
import 'package:applicationgetx/view/screen/auth/signUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  Signup();
  goTologin();
}

class SignupcontrollerImp extends SignupController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;

  late TextEditingController phone;

  @override
  Signup() {}

  @override
  goTologin() {
    Get.offAllNamed(AppRoute.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    username.dispose();
    password.dispose();
    phone.dispose();

    super.dispose();
  }
}
