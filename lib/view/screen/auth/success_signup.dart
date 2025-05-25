import 'package:applicationgetx/core/constant/color.dart';
import 'package:applicationgetx/view/widget/auth/custombuttom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/successsignup_controller.dart';

class SuccessSignup extends StatelessWidget {
  SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccesssignupControlleImp controller = Get.put(SuccesssignupControlleImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "32".tr,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Appcolor.grey),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Center(
                child: Icon(
              Icons.check_circle_outline_outlined,
              size: 200,
              color: Appcolor.Primarycolor,
            )),
            Text("37".tr, style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(
              height: 10,
            ),
            Text("38".tr,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200)),
            Spacer(),
            Container(
              width: double.infinity,
              child: Custombuttom(
                text: "31".tr,
                onPressed: () {
                  controller.gotologin();
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
