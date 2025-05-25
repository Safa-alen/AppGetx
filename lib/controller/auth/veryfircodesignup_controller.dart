import 'package:applicationgetx/core/constant/route.dart';
import 'package:get/get.dart';

abstract class VeryfircodesignupController extends GetxController {
  Veryfircode();
  gotoSuccesssignup();
}

class VeryfircodesignupControllerImp extends VeryfircodesignupController {
  late String Verfycode;
  @override
  gotoSuccesssignup() {
    Get.offNamed(AppRoute.successSignup);
  }

  @override
  Veryfircode() {}

  @override
  void onInit() {
    super.onInit();
  }
}
