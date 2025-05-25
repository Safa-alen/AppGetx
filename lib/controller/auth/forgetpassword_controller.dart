import 'package:applicationgetx/core/constant/route.dart';
import 'package:applicationgetx/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetpasswordController extends GetxController {
  checkemail();
  goToverfiycode();
}

class ForgetpasswordControllerImp extends ForgetpasswordController {
  late TextEditingController email;

  @override
  checkemail() {}

  @override
  goToverfiycode() {
    Get.offAllNamed(AppRoute.verFiycode);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
