import 'package:applicationgetx/controller/onbording_controller.dart';
import 'package:applicationgetx/core/constant/color.dart';
import 'package:applicationgetx/data/datasourse/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBordingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onboardingList.length,
                    (index) => AnimatedContainer(
                          margin: EdgeInsets.only(right: 5),
                          duration: Duration(
                            microseconds: 900,
                          ),
                          width: controller.currentpage == index ? 20 : 6,
                          height: 6,
                          decoration: BoxDecoration(
                              color: Appcolor.Primarycolor,
                              borderRadius: BorderRadius.circular(10)),
                        )),
              ],
            ));
  }
}
