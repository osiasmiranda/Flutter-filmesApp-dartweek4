import 'package:dartweek4_app/modules/login/login_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  //Instanciando o controller pode usar como acima retirando o stateless
  //ou deixando o state e chamando do final controller = Get.find<LoginController>();
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/background.png',
            width: Get.width,
            height: Get.height,
            fit: BoxFit.cover,
          ),
          Container(
            width: Get.width,
            height: Get.height,
            color: Colors.black.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                SizedBox(height: 50),
                SizedBox(
                  width: Get.width * 0.9,
                  height: 42,
                  child: SignInButton(
                    Buttons.Google,
                    text: 'Entrar com o Google',
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    onPressed: () {
                      controller.login();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
