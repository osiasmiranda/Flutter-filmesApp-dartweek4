import 'package:get/get.dart';
import '/modules/movies/movies_controller.dart';
import '/repositories/genres/genres_repository.dart';
import '/repositories/genres/genres_repository_impl.dart';
import '/services/genres/genres_service.dart';
import '/services/genres/genres_service_impl.dart';

class MoviesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenresRepository>(() => GenresRepositoryImpl(restClient: Get.find()));
    Get.lazyPut<GenresService>(() => GenresServiceImpl(genreRepository: Get.find()));

    Get.lazyPut(() => MoviesController(
          genresService: Get.find(),
          moviesService: Get.find(),
          authService: Get.find(),
        ));
  }
}
