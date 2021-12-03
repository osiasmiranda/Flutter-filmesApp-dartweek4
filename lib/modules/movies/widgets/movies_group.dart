import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/ui/widgets/movies_card.dart';
import '/models/movie_model.dart';
import '/modules/movies/movies_controller.dart';

class MoviesGroup extends GetView<MoviesController> {
  final String title;

  final List<MovieModel> movies;

  const MoviesGroup({
    Key? key,
    required this.title,
    required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Text(
            '$title',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 280,
            child: Obx(
              () {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    var movie = movies[index];
                    return MoviesCard(
                      movie: movie,
                      favoriteCallback: () => controller.favoriteMovie(movie),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
