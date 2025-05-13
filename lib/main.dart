import 'package:applicationgetx/core/constant/color.dart';
import 'package:applicationgetx/core/localization/translation.dart';
import 'package:applicationgetx/core/services/services.dart';
import 'package:applicationgetx/route.dart';
import 'package:applicationgetx/view/screen/auth/login.dart';
import 'package:applicationgetx/view/screen/auth/signup.dart';
import 'package:applicationgetx/view/screen/language.dart';
import 'package:applicationgetx/view/screen/onboarding.dart';
import 'package:applicationgetx/view/widget/language/custombuttomlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/localization/localcontroller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialservices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Locacontroller controller = Get.put(Locacontroller());
    return GetMaterialApp(
      translations: Mytranslation(),
      locale: controller.initalLang,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: TextTheme(
          titleMedium: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Appcolor.black),
          bodyMedium: TextStyle(
              height: 2, color: Appcolor.grey, fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 26, color: Appcolor.black),
          titleSmall: TextStyle(fontSize: 14, color: Appcolor.black),
        ),
      ),
      home: Language(),
      routes: routes,
    );
  }
}
