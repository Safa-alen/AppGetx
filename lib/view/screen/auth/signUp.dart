import 'package:applicationgetx/controller/auth/signup_controller.dart';
import 'package:applicationgetx/core/constant/color.dart';
import 'package:applicationgetx/core/function/alertexitapp.dart';
import 'package:applicationgetx/core/function/validateput.dart';
import 'package:applicationgetx/view/widget/auth/custombuttom.dart';
import 'package:applicationgetx/view/widget/auth/customtextbody.dart';
import 'package:applicationgetx/view/widget/auth/customtexttitle.dart';
import 'package:applicationgetx/view/widget/auth/customtextformfield.dart';
import 'package:applicationgetx/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "17".tr,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Appcolor.grey),
          ),
        ),
        body: PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, result) => {AlertExitApp()},
            child: GetBuilder<SignupcontrollerImp>(
              builder: (controller) => Container(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Form(
                  key: controller.formstate,
                  child: ListView(
                    children: [
                      Customtexttitle(
                        title: "10".tr,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomtextBody(text: "24".tr),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      customtextfield(
                          isNumber: false,
                          valid: (Value) {
                            return ValidatInp(Value!, 5, 100, "usernama");
                          },
                          labeltext: '20'.tr,
                          hinttext: '23'.tr,
                          iconData: Icons.person_2,
                          mycontroller: controller.username),
                      customtextfield(
                        isNumber: false,
                        valid: (Value) {
                          return ValidatInp(Value!, 5, 100, "Email");
                        },
                        labeltext: '18'.tr,
                        hinttext: '12'.tr,
                        iconData: Icons.email_outlined,
                        mycontroller: controller.email,
                      ),
                      customtextfield(
                          isNumber: true,
                          valid: (Value) {
                            return ValidatInp(Value!, 5, 100, "phone");
                          },
                          labeltext: '21'.tr,
                          hinttext: '22'.tr,
                          iconData: Icons.phone_android_sharp,
                          mycontroller: controller.phone),
                      GetBuilder<SignupcontrollerImp>(
                        builder: (controller) => customtextfield(
                            obscuretext: controller.isshowpassword,
                            onTapIcon: () {
                              controller.showpassword();
                            },
                            isNumber: true,
                            valid: (Value) {
                              return ValidatInp(Value!, 5, 30, "password");
                            },
                            labeltext: "19".tr,
                            hinttext: "13".tr,
                            iconData: Icons.lock_outline,
                            mycontroller: controller.password),
                      ),
                      Custombuttom(
                        text: "17".tr,
                        onPressed: () {
                          controller.Signup();
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Textsignup(
                        text1: "25".tr,
                        text2: "15".tr,
                        onTap: () {
                          controller.goTologin();
                        },
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
