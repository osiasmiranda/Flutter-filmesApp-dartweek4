import 'package:get/get.dart';
import '../../app/modules/module.dart';
import './login_page.dart';
import './login_export.dart';

class LoginModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/login',
      page: () => LoginPage(),
      binding: LoginBindings(),
    ),
  ];
}
