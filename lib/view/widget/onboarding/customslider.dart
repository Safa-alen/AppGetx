import 'package:applicationgetx/controller/onbording_controller.dart';
import 'package:applicationgetx/core/constant/color.dart';
import 'package:applicationgetx/data/datasourse/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBording extends GetView<OnBordingControllerImp> {
  const CustomSliderOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pagecontroller,
        onPageChanged: (value) {
          controller.OnPageChanged(value);
        },
        itemCount: onboardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Text(onboardingList[i].title!,
                    style: Theme.of(context).textTheme.headlineMedium),
                SizedBox(
                  height: 80,
                ),
                Image.asset(
                  onboardingList[i].image!,
                  height: Get.width / 1.3,
                  // width: 200,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(onboardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
              ],
            ));
  }
}
