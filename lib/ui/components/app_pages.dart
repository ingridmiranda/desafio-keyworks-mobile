import 'package:desafio_keyworks/application/login/login_binding.dart';
import 'package:desafio_keyworks/ui/pages/pages.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: '/login', page: () => const LoginPage(), binding: LoginBinding())
  ];
}
