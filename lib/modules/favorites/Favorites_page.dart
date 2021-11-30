import 'package:dartweek4_app/app/ui/widgets/movies_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'favorites_controller.dart';

class FavoritesPage extends GetView<FavoritesController> {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Favoritos"),
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: SizedBox(
            width: Get.width,
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              children: controller.movies.map((m) => MoviesCard(movie: m, favoriteCallback: () => controller.removeFavorite(m))).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
