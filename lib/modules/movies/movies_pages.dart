import 'package:dartweek4_app/modules/movies/movies_controller.dart';
import 'package:dartweek4_app/modules/movies/widgets/movies_group.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dartweek4_app/modules/movies/widgets/movies_filters.dart';
import 'package:dartweek4_app/modules/movies/widgets/movies_header.dart';

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
