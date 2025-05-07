import 'package:get/get.dart';
import 'package:api_template_app/app/routes/app_pages.dart';

class IntroController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.HOME);
    });
  }
}
