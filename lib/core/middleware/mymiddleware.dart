import 'package:applicationgetx/core/constant/route.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../services/services.dart';

class Mymiddleware extends GetMiddleware {
  MyServices services = Get.find();

  @override
  int? get Priority => 1;
  RouteSettings? redirect(String? route) {
    if (services.sharedpreferences.getString("onboarding") == "1")
      return RouteSettings(name: AppRoute.login);
  }
}
