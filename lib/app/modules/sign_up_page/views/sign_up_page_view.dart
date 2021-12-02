import 'package:attendance_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_page_controller.dart';

class SignUpPageView extends GetView<SignUpPageController> {
  const SignUpPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          left: Get.width * 0.1,
          right: Get.width * 0.1,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Register',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 75,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  Obx(
                    () {
                      return SizedBox(
                        height: 75,
                        child: TextFormField(
                          obscureText: !controller.isPasswordVisible.value,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            isDense: true,
                            border: const OutlineInputBorder(),
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(controller.isPasswordVisible.value
                                  ? Icons.lock_open_rounded
                                  : Icons.lock_outline_rounded),
                              onPressed: controller.changePasswordVisibility,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Obx(
                    () {
                      return SizedBox(
                        height: 75,
                        child: TextFormField(
                          obscureText:
                              !controller.isConfirmPasswordVisible.value,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            isDense: true,
                            border: const OutlineInputBorder(),
                            labelText: 'Confirm Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                  controller.isConfirmPasswordVisible.value
                                      ? Icons.lock_open_rounded
                                      : Icons.lock_outline_rounded),
                              onPressed:
                                  controller.changeConfirmPasswordVisibility,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Row(
                    children: [
                      Obx(() {
                        return InkWell(
                          radius: 1,
                          borderRadius: BorderRadius.circular(100),
                          onTap: controller.changeRememberMeStatus,
                          child: Icon(
                            controller.isRememberMe.value
                                ? Icons.circle_rounded
                                : Icons.circle_outlined,
                            size: 20,
                          ),
                        );
                      }),
                      const SizedBox(width: 5),
                      const Text(
                        'Remember me',
                        style: TextStyle(color: Colors.black87),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    child: const Text('Register'),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () => Get.offAndToNamed(Routes.SIGN_IN_PAGE),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
