import 'package:applicationgetx/controller/auth/forgetpassword_controller.dart';

import 'package:applicationgetx/core/constant/color.dart';
import 'package:applicationgetx/core/function/validateput.dart';

import 'package:applicationgetx/view/widget/auth/custombuttom.dart';
import 'package:applicationgetx/view/widget/auth/customtextbody.dart';
import 'package:applicationgetx/view/widget/auth/customtexttitle.dart';
import 'package:applicationgetx/view/widget/auth/customtextformfield.dart';
import 'package:applicationgetx/view/widget/auth/logoauth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetpasswordControllerImp controller =
        Get.put(ForgetpasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "14".tr,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Appcolor.grey),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: ListView(
          children: [
            Customtexttitle(
              title: "27".tr,
            ),
            SizedBox(
              height: 15,
            ),
            CustomtextBody(text: "29".tr),
            SizedBox(
              height: 30,
            ),
            customtextfield(
                obscuretext: false,
                isNumber: false,
                valid: (Value) {
                  return ValidatInp(Value!, 5, 100, "Email");
                },
                labeltext: '18'.tr,
                hinttext: '12'.tr,
                iconData: Icons.email_outlined,
                mycontroller: controller.email),
            Custombuttom(
              text: "30".tr,
              onPressed: () {
                controller.goToverfiycode();
              },
            ),
          ],
        ),
      ),
    );
  }
}
