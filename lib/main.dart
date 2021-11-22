import 'package:dartweek4_app/app/bindings/application_bindings.dart';
import 'package:dartweek4_app/app/ui/filmes_app_ui_config.dart';
import 'package:dartweek4_app/modules/movie_detail/movie_detail_module.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import '../modules/splash/splash_module.dart';
import '../modules/login/login_module.dart';
import '../modules/home/home_module.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  RemoteConfig.instance.fetchAndActivate();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ApplicationBindings(),
      title: FilmesAppUiConfig.title,
      theme: FilmesAppUiConfig.theme,
      getPages: [
        ...SplashModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers,
        ...MovieDetailModule().routers,
      ],
    );
  }
}
