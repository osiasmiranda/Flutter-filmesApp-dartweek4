import 'package:dartweek4_app/modules/movies/movies_controller.dart';
import 'package:dartweek4_app/modules/movies/widgets/filter_tag.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MoviesFilters extends GetView<MoviesController> {
  const MoviesFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 20),
      scrollDirection: Axis.horizontal,
      child: Obx(
        () {
          return Row(
            children: controller.genres
                .map(
                  (genres) => FilterTag(
                    model: genres,
                    onPressed: () => controller.filterMoviesByGenre(genres),
                    selected: controller.genreSelected.value?.id == genres.id,
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
