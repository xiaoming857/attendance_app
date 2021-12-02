import 'package:get/get.dart';

class SignUpPageController extends GetxController {
  var isPasswordVisible = false.obs;
  var isConfirmPasswordVisible = false.obs;
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

  void changeConfirmPasswordVisibility() =>
      isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;

  void changeRememberMeStatus() => isRememberMe.value = !isRememberMe.value;
}
