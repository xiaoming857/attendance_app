import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void onChangePage(int index) => currentIndex.value = index;
}
