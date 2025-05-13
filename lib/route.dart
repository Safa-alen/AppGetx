import 'package:applicationgetx/core/constant/route.dart';
import 'package:applicationgetx/view/screen/auth/login.dart';
import 'package:applicationgetx/view/screen/auth/signUp.dart';
import 'package:applicationgetx/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => Login(),
  AppRoute.onboarding: (context) => OnBoarding(),
  AppRoute.Signup: (context) => Signup()
};
