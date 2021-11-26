import 'package:dartweek4_app/app/ui/theme_extensions.dart';
import 'package:flutter/material.dart';

import 'package:dartweek4_app/models/movie_detail_model.dart';
import 'package:get/get.dart';

import 'movie_cast.dart';

class MovieDetailContentMainCast extends StatelessWidget {
  final MovieDetailModel? movie;

  final showPanel = false.obs;

  MovieDetailContentMainCast({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: context.themeGrey,
          thickness: 1.0,
        ),
        Obx(
          () {
            return ExpansionPanelList(
              elevation: 0,
              expandedHeaderPadding: EdgeInsets.zero,
              expansionCallback: (panelIndex, isExpanded) {
                showPanel.toggle();
              },
              children: [
                ExpansionPanel(
                  canTapOnHeader: false,
                  isExpanded: showPanel.value,
                  backgroundColor: Colors.white,
                  headerBuilder: (context, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Elenco',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    );
                  },
                  body: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: movie?.cast.map((c) => MovieCast(cast: c)).toList() ?? [],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
