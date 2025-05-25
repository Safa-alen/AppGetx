import 'package:applicationgetx/core/constant/route.dart';
import 'package:applicationgetx/core/services/services.dart';
import 'package:applicationgetx/data/datasourse/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBordingController extends GetxController {
  Naxt();
  OnPageChanged(int index);
}

class OnBordingControllerImp extends OnBordingController {
  PageController? pagecontroller;
  int currentpage = 0;
  MyServices services = Get.find();

  @override
  Naxt() {
    currentpage++;
    if (currentpage > onboardingList.length - 1) {
      services.sharedpreferences.setString('onboarding', "1");
      Get.toNamed(AppRoute.login);
    } else {
      pagecontroller!.animateToPage(currentpage,
          duration: Duration(milliseconds: 900), curve: Curves.easeIn);
    }
  }

  @override
  OnPageChanged(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }
}
