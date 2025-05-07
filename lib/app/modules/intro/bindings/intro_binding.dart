import 'package:get/get.dart';
import 'package:api_template_app/app/modules/intro/controllers/intro_controller.dart';

class IntroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroController>(() => IntroController());
  }
}
