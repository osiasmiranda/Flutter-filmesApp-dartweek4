import 'package:dartweek4_app/app/ui/filmes_app_icons_icons.dart';
import 'package:dartweek4_app/app/ui/theme_extensions.dart';
import 'package:dartweek4_app/modules/favorites/Favorites_page.dart';
import 'package:dartweek4_app/modules/home/home_controller.dart';
import 'package:dartweek4_app/modules/movies/movies_binding.dart';
import 'package:dartweek4_app/modules/movies/movies_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.pageIndex,
          selectedItemColor: context.themeRed,
          unselectedItemColor: context.themeGrey,
          onTap: controller.goToPage,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.local_movies), label: 'Filmes'),
            BottomNavigationBarItem(icon: Icon(FilmesAppIcons.heart_empty), label: 'Favoritos'),
            BottomNavigationBarItem(icon: Icon(Icons.logout_outlined), label: 'Sair'),
          ],
        );
      }),
      body: Navigator(
        initialRoute: '/movies',
        key: Get.nestedKey(HomeController.NAVIGATOR_KEY),
        onGenerateRoute: (settings) {
          if (settings.name == '/movies') {
            return GetPageRoute(
              settings: settings,
              page: () => MoviesPages(),
              binding: MoviesBinding(),
            );
          }
          if (settings.name == '/favorites') {
            return GetPageRoute(
              settings: settings,
              page: () => FavoritesPage(),
            );
          }
          return null;
        },
      ),
    );
  }
}
