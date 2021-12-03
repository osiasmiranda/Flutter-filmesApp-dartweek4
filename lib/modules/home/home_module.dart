import 'package:get/get_navigation/src/routes/get_route.dart';
import '/app/modules/module.dart';
import '/modules/home/home_bindings.dart';
import '/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/home',
      page: () => HomePage(),
      binding: HomeBindings(),
    ),
  ];
}
