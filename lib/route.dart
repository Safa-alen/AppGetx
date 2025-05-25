import 'package:applicationgetx/core/constant/route.dart';
import 'package:applicationgetx/core/middleware/mymiddleware.dart';

import 'package:applicationgetx/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:applicationgetx/view/screen/auth/login.dart';
import 'package:applicationgetx/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:applicationgetx/view/screen/auth/signUp.dart';
import 'package:applicationgetx/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:applicationgetx/view/screen/auth/success_signup.dart';
import 'package:applicationgetx/view/screen/auth/forgetpassword/verifycodepassword.dart';
import 'package:applicationgetx/view/screen/auth/verfycodesingup.dart';
import 'package:applicationgetx/view/screen/language.dart';
import 'package:applicationgetx/view/screen/onboarding.dart';

import 'package:get/get_navigation/get_navigation.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => Language(), middlewares: [Mymiddleware()]),
  GetPage(name: AppRoute.login, page: () => Login()),
  GetPage(
    name: AppRoute.SignUp,
    page: () => Signup(),
  ),
  GetPage(name: AppRoute.forgetPassword, page: () => const Forgetpassword()),
  GetPage(
    name: AppRoute.verFiycode,
    page: () => Verifycode(),
  ),
  GetPage(name: AppRoute.restartPassword, page: () => Resetpassword()),
  GetPage(
      name: AppRoute.successResetpassword, page: () => SuccessResetpassword()),
  GetPage(
    name: AppRoute.successSignup,
    page: () => SuccessSignup(),
  ),
  GetPage(
    name: AppRoute.verfycodesignup,
    page: () => Verfycodesingup(),
  ),
  GetPage(name: AppRoute.onboarding, page: () => OnBoarding()),
];
