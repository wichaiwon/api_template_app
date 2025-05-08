import 'package:get/get.dart';

class HomeController extends GetxController {
  final userName = 'John Doe';

  final count = 0.obs;

  void increment() => count.value++;
}
