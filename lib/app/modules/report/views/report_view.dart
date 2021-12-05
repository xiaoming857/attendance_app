import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/report_controller.dart';

class ReportView extends GetView<ReportController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReportView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ReportView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
