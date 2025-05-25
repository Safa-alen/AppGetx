import 'package:applicationgetx/controller/auth/resetpassword_controller.dart';

import 'package:applicationgetx/core/constant/color.dart';

import 'package:applicationgetx/view/widget/auth/custombuttom.dart';
import 'package:applicationgetx/view/widget/auth/customtextbody.dart';
import 'package:applicationgetx/view/widget/auth/customtexttitle.dart';
import 'package:applicationgetx/view/widget/auth/customtextformfield.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetpasswordcontrollerImp controller =
        Get.put(ResetpasswordcontrollerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "35".tr,
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
              title: "35".tr,
            ),
            SizedBox(
              height: 15,
            ),
            CustomtextBody(
              text: "34".tr,
            ),
            SizedBox(
              height: 30,
            ),
            GetBuilder<ResetpasswordcontrollerImp>(
              builder: (controller) => customtextfield(
                  obscuretext: controller.isshowpassword,
                  onTapIcon: () {
                    controller.showpassword();
                  },
                  isNumber: true,
                  valid: (Value) {},
                  labeltext: '19'.tr,
                  hinttext: '13'.tr,
                  iconData: Icons.email_outlined,
                  mycontroller: controller.password),
            ),
            GetBuilder<ResetpasswordcontrollerImp>(
              builder: (controller) => customtextfield(
                  obscuretext: controller.isshowpassword,
                  onTapIcon: () {
                    controller.showpassword();
                  },
                  isNumber: true,
                  valid: (Value) {},
                  labeltext: '19'.tr,
                  hinttext: '34'.tr,
                  iconData: Icons.email_outlined,
                  mycontroller: controller.repassword),
            ),
            Custombuttom(
              text: "13".tr,
              onPressed: () {
                controller.gotosuccessresetpassword();
              },
            ),
          ],
        ),
      ),
    );
  }
}
