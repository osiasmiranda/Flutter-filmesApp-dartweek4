import 'package:get/get.dart';
import '../auth/auth_service.dart';
import '../rest_client/rest_client.dart';
import '../../repositories/login/login_repository.dart';
import '../../repositories/login/login_repository_impl.dart';
import '../../repositories/movies/movies_repository.dart';
import '../../repositories/movies/movies_repository_impl.dart';
import '../../services/login/login_service.dart';
import '../../services/login/login_service_impl.dart';
import '../../services/movies/movies_service.dart';
import '../../services/movies/movies_service_impl.dart';

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
