import 'package:attendance_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 20),
                color: Colors.blue,
                child: SizedBox(
                  height: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: const [
                              Text(
                                'Xiaoming857',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                ),
                              ),
                              Text(
                                'gnimoaix857@gmail.com',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue.shade800),
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        child: const Icon(
                          Icons.edit_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Settings',
                style: TextStyle(fontSize: 21),
              ),
              ListTile(
                title: const Text('Dark Mode'),
                horizontalTitleGap: 0,
                leading: const Icon(Icons.dark_mode_outlined),
                trailing: Obx(
                  () {
                    return Switch(
                      value: controller.isDarkMode.value,
                      onChanged: controller.onChangeDarkMode,
                    );
                  },
                ),
              ),
              ListTile(
                title: const Text('Language'),
                horizontalTitleGap: 0,
                leading: const Icon(Icons.language_outlined),
                trailing: Obx(
                  () {
                    return Text(controller.currentLanguage.value);
                  },
                ),
              ),
              const SizedBox(height: 15),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Help'),
              ),
              ElevatedButton(
                onPressed: () => Get.offAndToNamed(Routes.SIGN_IN_PAGE),
                child: const Text('Logout'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Prototype Version',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
