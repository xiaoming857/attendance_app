import 'package:get/get.dart';

import 'package:attendance_app/app/modules/devices_page/bindings/devices_binding.dart';
import 'package:attendance_app/app/modules/devices_page/views/devices_view.dart';
import 'package:attendance_app/app/modules/home/bindings/home_binding.dart';
import 'package:attendance_app/app/modules/home/dashboard/bindings/dashboard_binding.dart';
import 'package:attendance_app/app/modules/home/dashboard/views/dashboard_view.dart';
import 'package:attendance_app/app/modules/home/profile/bindings/profile_binding.dart';
import 'package:attendance_app/app/modules/home/profile/views/profile_view.dart';
import 'package:attendance_app/app/modules/home/views/home_view.dart';
import 'package:attendance_app/app/modules/members/bindings/members_binding.dart';
import 'package:attendance_app/app/modules/members/views/members_view.dart';
import 'package:attendance_app/app/modules/report/bindings/report_binding.dart';
import 'package:attendance_app/app/modules/report/views/report_view.dart';
import 'package:attendance_app/app/modules/sign_in_page/bindings/sign_in_page_binding.dart';
import 'package:attendance_app/app/modules/sign_in_page/views/sign_in_page_view.dart';
import 'package:attendance_app/app/modules/sign_up_page/bindings/sign_up_page_binding.dart';
import 'package:attendance_app/app/modules/sign_up_page/views/sign_up_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SIGN_IN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.DASHBOARD,
          page: () => DashboardView(),
          binding: DashboardBinding(),
        ),
        GetPage(
          name: _Paths.PROFILE,
          page: () => ProfileView(),
          binding: ProfileBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.SIGN_IN_PAGE,
      page: () => SignInPageView(),
      binding: SignInPageBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP_PAGE,
      page: () => SignUpPageView(),
      binding: SignUpPageBinding(),
    ),
    GetPage(
      name: _Paths.DEVICES,
      page: () => DevicesView(),
      binding: DevicesBinding(),
    ),
    GetPage(
      name: _Paths.MEMBERS,
      page: () => MembersView(),
      binding: MembersBinding(),
    ),
    GetPage(
      name: _Paths.REPORT,
      page: () => ReportView(),
      binding: ReportBinding(),
    ),
  ];
}
