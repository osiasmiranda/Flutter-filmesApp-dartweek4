import 'package:get/get.dart';
import '/app/ui/loader/loader_mixin.dart';
import '/app/ui/messeges/messages_mixin.dart';
import '/services/login/login_service.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessagesModel>();

  LoginController({required LoginService loginService}) : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messagerListener(message);
  }

  Future<void> login() async {
    //# MODO 1 observando 1
    // loading.value = true;
    // await Future.delayed(Duration(seconds: 2));
    // loading.value = false;
    //# MODO 2 facilidades GetX
    try {
      loading(true);
      await _loginService.login();
      //await 2.seconds.delay();
      loading(false);
      message(MessagesModel.info(title: 'Sucesso', message: 'Você está logado')); //# snackBar
    } catch (e, s) {
      print(e);
      print(s);
      loading(false);
      message(MessagesModel.error(title: 'Erro', message: 'Erro ao realizar Login'));
    }
  }
}
