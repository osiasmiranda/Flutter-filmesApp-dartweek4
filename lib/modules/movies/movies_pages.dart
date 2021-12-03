import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/modules/movies/movies_controller.dart';
import '/modules/movies/widgets/movies_group.dart';
import '/modules/movies/widgets/movies_filters.dart';
import '/modules/movies/widgets/movies_header.dart';

class MoviesPages extends GetView<MoviesController> {
  const MoviesPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: ListView(
        // padding: EdgeInsets.zero,
        children: [
          MoviesHeader(),
          MoviesFilters(),
          MoviesGroup(
            title: 'Mais Populares',
            movies: controller.popularMovies,
          ),
          MoviesGroup(
            title: 'Top Filmes',
            movies: controller.topRatedMovies,
          ),
        ],
      ),
    );
  }
}
