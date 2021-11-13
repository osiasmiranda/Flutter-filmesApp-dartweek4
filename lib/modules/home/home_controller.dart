import 'package:dartweek4_app/services/login/login_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static const NAVIGATOR_KEY = 1;
  static const INDEX_PAGE_EXIST = 2;
  final LoginService _loginService;

  HomeController({required LoginService loginService}) : _loginService = loginService;

  final _pageIndex = 0.obs;

  final _pages = ['/movies', '/favorites'];

  int get pageIndex => _pageIndex.value;

  void goToPage(int page) {
    _pageIndex(page);
    if (page == INDEX_PAGE_EXIST) {
      _loginService.logout();
    } else {
      Get.offAllNamed(_pages[page], id: NAVIGATOR_KEY);
    }
  }
}
