import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';

AlertExitApp() {
  Get.defaultDialog(title: "41".tr, middleText: "44".tr, actions: [
    ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text("43".tr)),
    ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text("42".tr))
  ]);
}
