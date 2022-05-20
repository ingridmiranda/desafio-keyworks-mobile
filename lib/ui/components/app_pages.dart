import 'package:get/get.dart';

import '../../infra/login/login_binding.dart';
import '../../ui/pages/pages.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: '/login', page: () => const LoginPage(), binding: LoginBinding())
  ];
}
