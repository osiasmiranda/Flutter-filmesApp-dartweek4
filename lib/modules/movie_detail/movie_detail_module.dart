import 'package:get/get_navigation/src/routes/get_route.dart';

import '/app/modules/module.dart';
import '/modules/movie_detail/movie_detail_bindings.dart';
import '/modules/movie_detail/movie_detail_page.dart';

class MovieDetailModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/movie/detail',
      page: () => MovieDetailPage(),
      binding: MovieDetailBindings(),
    )
  ];
}
