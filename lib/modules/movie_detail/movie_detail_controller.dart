import 'package:dartweek4_app/models/movie_detail_model.dart';
import 'package:get/get.dart';

import 'package:dartweek4_app/app/ui/loader/loader_mixin.dart';
import 'package:dartweek4_app/app/ui/messeges/messages_mixin.dart';
import 'package:dartweek4_app/services/movies/movies_service.dart';

class MovieDetailController extends GetxController with LoaderMixin, MessagesMixin {
  final MoviesService _moviesService;

  var loading = false.obs;
  var message = Rxn<MessagesModel>();
  var movie = Rxn<MovieDetailModel>();

  MovieDetailController({
    required MoviesService moviesService,
  }) : _moviesService = moviesService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messagerListener(message);
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      final movieId = Get.arguments;
      loading(true);
      final movieDetailData = await _moviesService.getDetail(movieId);
      movie.value = movieDetailData;
      loading(false);
    } catch (e, s) {
      print(e);
      print(s);
      loading(false);
      message(MessagesModel.error(title: 'Erro', message: 'Erro ao buscar filmes detalhe'));
    }
  }
}
