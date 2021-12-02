import 'package:attendance_app/app/modules/home/dashboard/views/dashboard_view.dart';
import 'package:attendance_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.onChangePage,
            items: const [
              BottomNavigationBarItem(
                label: 'Dashboard',
                icon: Icon(Icons.dashboard_outlined),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(Icons.person_outline_rounded),
              ),
            ],
          ),
          body: Obx(
            () {
              switch (controller.currentIndex.value) {
                case 0:
                  return DashboardView();
                default:
                  return DashboardView();
              }
            },
          ),
        );
      },
    );
  }
}
