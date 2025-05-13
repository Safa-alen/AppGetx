import 'package:applicationgetx/controller/onbording_controller.dart';
import 'package:applicationgetx/view/widget/onboarding/custombuttom.dart';
import 'package:applicationgetx/view/widget/onboarding/customslider.dart';
import 'package:applicationgetx/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBordingControllerImp());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(flex: 3, child: CustomSliderOnBording()),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      CustomDotController(),
                      Spacer(
                        flex: 2,
                      ),
                      CustomButtomOnBording(),
                    ],
                  ))
            ],
          ),
        ));
  }
}
