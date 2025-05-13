import 'package:applicationgetx/controller/auth/signup_controller.dart';
import 'package:applicationgetx/core/constant/color.dart';
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
    SignupcontrollerImp controller = Get.put(SignupcontrollerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Appcolor.grey),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: ListView(
          children: [
            Customtexttitle(
              title: "Welcome Back",
            ),
            SizedBox(
              height: 15,
            ),
            CustomtextBody(
                text:
                    "Sign Up with Your email and password \n or continue with social media"),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 15,
            ),
            customtextfield(
                labeltext: 'Username',
                hinttext: 'Enter Your username',
                iconData: Icons.person_2,
                mycontroller: controller.username),
            customtextfield(
              labeltext: 'Email',
              hinttext: 'Enter Your Email',
              iconData: Icons.email_outlined,
              mycontroller: controller.email,
            ),
            customtextfield(
                labeltext: 'Phone',
                hinttext: 'Enter Your Phone',
                iconData: Icons.phone_android_sharp,
                mycontroller: controller.phone),
            customtextfield(
                labeltext: "Password",
                hinttext: "Enter Your Password ",
                iconData: Icons.lock_outline,
                mycontroller: controller.password),
            Text("Forgot Password", textAlign: TextAlign.right),
            Custombuttom(
              text: "Sign Up",
              onPressed: () {},
            ),
            SizedBox(
              height: 30,
            ),
            Textsignup(
              text1: " have any account?  ",
              text2: "SignIn",
              onTap: () {
                controller.goTologin();
              },
            )
          ],
        ),
      ),
    );
  }
}
