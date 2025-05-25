import 'package:applicationgetx/core/constant/route.dart';
import 'package:get/get.dart';

abstract class SuccesssignupController extends GetxController {
  gotologin();
}

class SuccesssignupControlleImp extends SuccesssignupController {
  @override
  gotologin() {
    Get.offAllNamed(AppRoute.login);
  }
}
