import 'package:applicationgetx/controller/auth/login_controller.dart';
import 'package:applicationgetx/core/constant/color.dart';
import 'package:applicationgetx/core/constant/route.dart';
import 'package:applicationgetx/core/function/alertexitapp.dart';
import 'package:applicationgetx/core/function/validateput.dart';
import 'package:applicationgetx/view/widget/auth/custombuttom.dart';
import 'package:applicationgetx/view/widget/auth/customtextbody.dart';
import 'package:applicationgetx/view/widget/auth/customtexttitle.dart';
import 'package:applicationgetx/view/widget/auth/customtextformfield.dart';
import 'package:applicationgetx/view/widget/auth/logoauth.dart';
import 'package:applicationgetx/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LogincontrollerImp controller = Get.put(LogincontrollerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "15".tr,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Appcolor.grey),
          ),
        ),
        body: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) async => AlertExitApp(),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  Logoauth(),
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
                        return ValidatInp(Value!, 5, 100, "Email");
                      },
                      labeltext: '18'.tr,
                      hinttext: '12'.tr,
                      iconData: Icons.email_outlined,
                      mycontroller: controller.email),
                  GetBuilder<LogincontrollerImp>(
                    builder: (controller) => customtextfield(
                      obscuretext: controller.isshowpassword,
                      onTapIcon: () {
                        controller.showpassword();
                      },
                      valid: (Value) {
                        return ValidatInp(Value!, 5, 30, "password");
                      },
                      labeltext: "19".tr,
                      hinttext: "13".tr,
                      iconData: Icons.lock_outline,
                      mycontroller: controller.password,
                      isNumber: true,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.goToforgetpassword();
                    },
                    child: Text("14".tr, textAlign: TextAlign.right),
                  ),
                  Custombuttom(
                    text: "26".tr,
                    onPressed: () {
                      controller.login();
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Textsignup(
                    text1: "16".tr,
                    text2: "17".tr,
                    onTap: () {
                      controller.goToSignUp();
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
