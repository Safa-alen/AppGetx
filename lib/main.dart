import 'package:applicationgetx/binding.dart';
import 'package:applicationgetx/core/localization/translation.dart';
import 'package:applicationgetx/core/services/services.dart';
import 'package:applicationgetx/route.dart';

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
      theme: controller.apptheme,
      initialBinding: MyBinding(),
      //home: Language(),
      //routes: routes,
      getPages: routes,
    );
  }
}
