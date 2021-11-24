import 'package:dartweek4_app/app/auth/auth_service.dart';
import 'package:dartweek4_app/app/rest_client/rest_client.dart';
import 'package:dartweek4_app/repositories/login/login_repository.dart';
import 'package:dartweek4_app/repositories/login/login_repository_impl.dart';
import 'package:dartweek4_app/repositories/movies/movies_repository.dart';
import 'package:dartweek4_app/repositories/movies/movies_repository_impl.dart';
import 'package:dartweek4_app/services/login/login_service.dart';
import 'package:dartweek4_app/services/login/login_service_impl.dart';
import 'package:dartweek4_app/services/movies/movies_service.dart';
import 'package:dartweek4_app/services/movies/movies_service_impl.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthService()).init();
    Get.lazyPut(() => RestClient(), fenix: true);
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl(), fenix: true);
    Get.lazyPut<LoginService>(() => LoginServiceImpl(loginRepository: Get.find()), fenix: true);
    Get.lazyPut<MoviesRepository>(() => MoviesRepositoryImpl(restClient: Get.find()), fenix: true);
    Get.lazyPut<MoviesService>(() => MoviesServiceImpl(moviesRepository: Get.find()), fenix: true);
  }
}
