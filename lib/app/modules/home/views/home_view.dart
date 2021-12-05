import 'package:attendance_app/app/modules/home/dashboard/views/dashboard_view.dart';
import 'package:attendance_app/app/modules/home/profile/views/profile_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
        child: SizedBox(
          height: 50,
          child: BottomAppBar(
            clipBehavior: Clip.hardEdge,
            shape: const CircularNotchedRectangle(),
            notchMargin: 5.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: TextButton(
                      child: const Icon(Icons.dashboard_outlined),
                      onPressed: () => controller.onChangePage(0)),
                ),
                const SizedBox(width: 50),
                Expanded(
                  child: TextButton(
                      child: const Icon(Icons.person_outline_rounded),
                      onPressed: () => controller.onChangePage(1)),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: SizedBox.square(
        dimension: 55,
        child: FloatingActionButton(
          child: const Icon(Icons.devices),
          onPressed: () {},
          elevation: 3,
        ),
      ),
      body: Obx(
        () {
          switch (controller.currentIndex.value) {
            case 0:
              return DashboardView();
            case 1:
              return ProfileView();
            default:
              return DashboardView();
          }
        },
      ),
    );
  }
}
