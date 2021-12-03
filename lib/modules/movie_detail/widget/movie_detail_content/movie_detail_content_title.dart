import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import '/app/ui/theme_extensions.dart';
import '/models/movie_detail_model.dart';

class MovieDetailTitle extends StatelessWidget {
  final MovieDetailModel? movie;

  const MovieDetailTitle({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Text(
            movie?.title ?? '',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          RatingStars(
            value: (movie?.start ?? 1) / 2,
            valueLabelVisibility: false,
            starColor: context.themeOrange,
            starSize: 14,
          ),
          SizedBox(height: 8),
          Text(
            movie?.genres.map((e) => e.name).join(', ') ?? '',
            style: TextStyle(color: context.themeGrey),
          ),
        ],
      ),
    );
  }
}
