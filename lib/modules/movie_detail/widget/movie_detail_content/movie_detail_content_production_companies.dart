import 'package:flutter/material.dart';

import '/models/movie_detail_model.dart';

class MovieDetailContentProductionCompanies extends StatelessWidget {
  final MovieDetailModel? movie;
  const MovieDetailContentProductionCompanies({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 5),
      child: RichText(
        text: TextSpan(
          text: 'Companhia(s) Produtora(s): ',
          style: TextStyle(
            color: Color(0xff222222),
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(
              text: movie?.productionCompanies.join(', ') ?? '',
              style: TextStyle(
                color: Color(0xff222222),
                fontWeight: FontWeight.normal,
                height: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
