import 'package:applicationgetx/core/constant/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetpasswordController extends GetxController {
  resetpassword();
  gotosuccessresetpassword();
}

class ResetpasswordcontrollerImp extends ResetpasswordController {
  late TextEditingController password;
  late TextEditingController repassword;
  bool isshowpassword = true;
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  gotosuccessresetpassword() {
    Get.toNamed(AppRoute.successResetpassword);
  }

  @override
  resetpassword() {}
  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }
}
