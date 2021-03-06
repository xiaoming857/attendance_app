import 'package:attendance_app/app/modules/devices_page/controllers/devices_controller.dart';
import 'package:attendance_app/app/modules/home/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );

    Get.lazyPut<DevicesController>(
      () => DevicesController(),
    );
  }
}
