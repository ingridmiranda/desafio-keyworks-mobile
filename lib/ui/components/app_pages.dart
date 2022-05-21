import 'package:get/get.dart';

import '../../infra/launches/launches.dart';
import '../../infra/configurations/configurations.dart';
import '../../infra/login/login.dart';
import '../../ui/pages/pages.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: '/login',
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: '/launch',
      page: () => const LaunchPage(),
      binding: LaunchBinding(),
    ),
    GetPage(
      name: '/configurations',
      page: () => const ConfigurationsPage(),
      binding: ConfigurationsBinding(),
    )
  ];
}
