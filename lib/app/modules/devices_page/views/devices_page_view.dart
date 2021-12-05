import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/devices_page_controller.dart';

class DevicesPageView extends GetView<DevicesPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DevicesPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DevicesPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
