import 'package:applicationgetx/core/constant/color.dart';
import 'package:applicationgetx/core/constant/route.dart';
import 'package:applicationgetx/core/localization/localcontroller.dart';
import 'package:applicationgetx/view/screen/onboarding.dart';
import 'package:applicationgetx/view/widget/language/custombuttomlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<Locacontroller> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //backgroundColor: Colors.white,
        body: Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "1".tr,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(
            height: 20,
          ),
          Custombuttomlang(
              textbuttom: "Ar",
              onPressed: () {
                controller.changeLang("ar");
                Get.offAllNamed(AppRoute.onboarding);
              }),
          Custombuttomlang(
              textbuttom: "En",
              onPressed: () {
                controller.changeLang("en");
                Get.offAllNamed(AppRoute.onboarding);
              })
        ],
      ),
    ));
  }
}
