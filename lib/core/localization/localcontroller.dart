import 'package:applicationgetx/core/constant/apptheme.dart';

import 'package:applicationgetx/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Locacontroller extends GetxController {
  Locale? initalLang;
  ThemeData apptheme = themeEnglish;
  MyServices myServices = Get.find();
  changeLang(String codelang) {
    Locale local = Locale(codelang);
    myServices.sharedpreferences.setString("lang", codelang);

    apptheme = codelang == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(apptheme);
    Get.updateLocale(local);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedpreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      initalLang = Locale("ar");
      apptheme = themeArabic;
    } else if (sharedPrefLang == "en") {
      initalLang = Locale("en");
      apptheme = themeEnglish;
    } else {
      initalLang = Locale(Get.deviceLocale!.languageCode);
      apptheme = themeEnglish;
    }
    super.onInit();
  }
}
