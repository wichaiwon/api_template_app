import 'package:get/get.dart';

class HomeController extends GetxController {
  final userName = 'user'.obs;
  final selectedCategoryIndex = 0.obs;

  final categories =
      [
        {'name': 'รายการของฉัน'},
        {'name': 'สินเชื่อ'},
        {'name': 'มีอะไรใหม่'},
      ].obs;

  void selectCatagory(int index) {
    selectedCategoryIndex.value = index;
  }
}
