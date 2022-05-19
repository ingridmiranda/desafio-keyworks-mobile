import 'package:desafio_keyworks/infra/login/login_repository.dart';

class LoginService {
  Future<void> doLogin() async {
    await LoginRepository().doLogin();
  }
}
