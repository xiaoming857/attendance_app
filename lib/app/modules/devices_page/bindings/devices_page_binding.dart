import 'package:get/get.dart';

import '../controllers/devices_page_controller.dart';

class DevicesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DevicesPageController>(
      () => DevicesPageController(),
    );
  }
}
