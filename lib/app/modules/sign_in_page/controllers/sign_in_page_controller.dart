import 'package:get/get.dart';

class SignInPageController extends GetxController {
  var isPasswordVisible = false.obs;
  var isRememberMe = false.obs;

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

  void changePasswordVisibility() =>
      isPasswordVisible.value = !isPasswordVisible.value;

  void changeRememberMeStatus() => isRememberMe.value = !isRememberMe.value;
}
