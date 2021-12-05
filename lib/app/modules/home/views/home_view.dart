import 'package:attendance_app/app/modules/devices_page/views/devices_view.dart';
import 'package:attendance_app/app/modules/home/dashboard/views/dashboard_view.dart';
import 'package:attendance_app/app/modules/home/profile/views/profile_view.dart';
import 'package:attendance_app/app/modules/members/views/members_view.dart';
import 'package:attendance_app/app/modules/report/views/report_view.dart';
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: TextButton(
                          child: const Icon(Icons.dashboard_outlined),
                          onPressed: () => controller.onChangePage(1),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          child: const Icon(Icons.people_outline_rounded),
                          onPressed: () => controller.onChangePage(2),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 50),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: TextButton(
                          child: const Icon(Icons.article_outlined),
                          onPressed: () => controller.onChangePage(3),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          child: const Icon(Icons.person_outline_rounded),
                          onPressed: () => controller.onChangePage(4),
                        ),
                      ),
                    ],
                  ),
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
          onPressed: () => controller.onChangePage(0),
          elevation: 3,
        ),
      ),
      body: Obx(
        () {
          switch (controller.currentIndex.value) {
            case 0:
              return DevicesView();
            case 1:
              return DashboardView();
            case 2:
              return MembersView();
            case 3:
              return ReportView();
            case 4:
              return ProfileView();
            default:
              return DashboardView();
          }
        },
      ),
    );
  }
}
