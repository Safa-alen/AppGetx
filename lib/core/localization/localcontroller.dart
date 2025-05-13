import 'package:applicationgetx/core/localization/translation.dart';
import 'package:applicationgetx/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Locacontroller extends GetxController {
  Locale? initalLang;
  MyServices myServices = Get.find();
  changeLang(String codelang) {
    Locale local = Locale(codelang);
    myServices.sharedpreferences.setString("Ar", codelang);
    Get.updateLocale(local);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedpreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      initalLang = Locale("ar");
    } else if (sharedPrefLang == "en") {
      initalLang = Locale("en");
    } else {
      initalLang = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
