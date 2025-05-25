import 'package:applicationgetx/core/constant/route.dart';
import 'package:get/get.dart';

abstract class VeryfircodeController extends GetxController {
  Veryfircode();
  gotoresetpassword();
}

class VeryfircodeControllerImp extends VeryfircodeController {
  late String Verfycode;
  @override
  gotoresetpassword() {
    Get.offAllNamed(AppRoute.restartPassword);
  }

  @override
  Veryfircode() {}

  @override
  void onInit() {
    super.onInit();
  }
}
