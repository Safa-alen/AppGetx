import 'package:applicationgetx/controller/onbording_controller.dart';
import 'package:applicationgetx/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtomOnBording extends GetView<OnBordingControllerImp> {
  const CustomButtomOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
      color: Appcolor.Primarycolor,
      child: MaterialButton(
        textColor: Colors.white,
        onPressed: () {
          controller.Naxt();
        },
        child: Text("Continue"),
      ),
    );
  }
}
