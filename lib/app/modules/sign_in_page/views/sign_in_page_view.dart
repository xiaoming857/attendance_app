import 'package:attendance_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_in_page_controller.dart';

class SignInPageView extends GetView<SignInPageController> {
  const SignInPageView({Key? key}) : super(key: key);

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
              'Login',
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
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(color: Colors.black87),
                        ),
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
                    child: const Text('Login'),
                    onPressed: () => Get.offAndToNamed(Routes.HOME),
                  ),
                ),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not registered?'),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () => Get.offAndToNamed(Routes.SIGN_UP_PAGE),
                      child: const Text(
                        'Create account',
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
