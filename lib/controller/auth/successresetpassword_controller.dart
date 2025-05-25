import 'package:applicationgetx/core/constant/route.dart';
import 'package:get/get.dart';

abstract class SuccessresetpasswordController extends GetxController {
  gotologin();
}

class SuccessresetpasswordControlleImp extends SuccessresetpasswordController {
  @override
  gotologin() {
    Get.offAllNamed(AppRoute.login);
  }
}
