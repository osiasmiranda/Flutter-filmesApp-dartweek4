import 'package:dartweek4_app/models/movie_detail_model.dart';
import 'package:flutter/material.dart';

import 'movie_detail_content_credits.dart';
import 'movie_detail_content_production_companies.dart';
import 'movie_detail_content_title.dart';

class MovieDetailContent extends StatelessWidget {
  final MovieDetailModel? movie;
  const MovieDetailContent({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MovieDetailTitle(movie: movie),
        MovieDetailContentCredits(movie: movie),
        MovieDetailContentProductionCompanies(movie: movie),
      ],
    );
  }
}
