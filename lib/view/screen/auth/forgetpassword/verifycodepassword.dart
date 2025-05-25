import 'package:applicationgetx/controller/auth/veryfircode_controller.dart';

import 'package:applicationgetx/core/constant/color.dart';

import 'package:applicationgetx/view/widget/auth/customtextbody.dart';
import 'package:applicationgetx/view/widget/auth/customtexttitle.dart';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class Verifycode extends StatelessWidget {
  const Verifycode({super.key});

  @override
  Widget build(BuildContext context) {
    VeryfircodeControllerImp controller = Get.put(VeryfircodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "39".tr,
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
              title: "30".tr,
            ),
            SizedBox(
              height: 15,
            ),
            CustomtextBody(
              text: "40".tr,
            ),
            SizedBox(
              height: 20,
            ),
            OtpTextField(
              fieldWidth: 50,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.gotoresetpassword();
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
