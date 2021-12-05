import 'package:get/get.dart';

class ProfileController extends GetxController {
  var isDarkMode = false.obs;
  var currentLanguage = 'English'.obs;

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

  void onChangeDarkMode(bool value) => isDarkMode.value = value;
}
