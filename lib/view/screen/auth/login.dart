import 'package:applicationgetx/controller/auth/login_controller.dart';
import 'package:applicationgetx/core/constant/color.dart';
import 'package:applicationgetx/core/constant/route.dart';
import 'package:applicationgetx/view/widget/auth/custombuttom.dart';
import 'package:applicationgetx/view/widget/auth/customtextbody.dart';
import 'package:applicationgetx/view/widget/auth/customtexttitle.dart';
import 'package:applicationgetx/view/widget/auth/customtextformfield.dart';
import 'package:applicationgetx/view/widget/auth/logoauth.dart';
import 'package:applicationgetx/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LogincontrollerImp controller = Get.put(LogincontrollerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign In",
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Appcolor.grey),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: ListView(
          children: [
            Logoauth(),
            Customtexttitle(
              title: "Welcome Back",
            ),
            SizedBox(
              height: 15,
            ),
            CustomtextBody(
                text:
                    "Sign in with Your email and password \n or continue with social media"),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 15,
            ),
            customtextfield(
                labeltext: 'Email',
                hinttext: 'Enter Your Email',
                iconData: Icons.email_outlined,
                mycontroller: controller.email),
            customtextfield(
                labeltext: "Password",
                hinttext: "Enter Your Password ",
                iconData: Icons.lock_outline,
                mycontroller: controller.password),
            Text("Forgot Password", textAlign: TextAlign.right),
            Custombuttom(
              text: "Sign In",
              onPressed: () {},
            ),
            SizedBox(
              height: 30,
            ),
            Textsignup(
              text1: "Don't have any account ?  ",
              text2: "SignUp",
              onTap: () {
                controller.goToSignUp();
              },
            )
          ],
        ),
      ),
    );
  }
}
