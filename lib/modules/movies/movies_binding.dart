import 'package:dartweek4_app/modules/movies/movies_controller.dart';
import 'package:dartweek4_app/repositories/genres/genres_repository.dart';
import 'package:dartweek4_app/repositories/genres/genres_repository_impl.dart';
import 'package:dartweek4_app/services/genres/genres_service.dart';
import 'package:dartweek4_app/services/genres/genres_service_impl.dart';
import 'package:get/get.dart';

class MoviesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenresRepository>(() => GenresRepositoryImpl(restClient: Get.find()));
    Get.lazyPut<GenresService>(() => GenresServiceImpl(genreRepository: Get.find()));

    Get.lazyPut(() => MoviesController(
          genresService: Get.find(),
          moviesService: Get.find(),
        ));
  }
}
