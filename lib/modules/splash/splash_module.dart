import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../app/modules/module.dart';
import './splash_page.dart';
import '../../modules/splash/splash_bindings.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
      binding: SplashBindings(),
    ),
  ];
}
