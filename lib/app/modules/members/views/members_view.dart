import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/members_controller.dart';

class MembersView extends GetView<MembersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MembersView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MembersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
