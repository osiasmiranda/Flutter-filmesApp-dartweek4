import 'package:get/get_connect/connect.dart';

class RestClient extends GetConnect {
  RestClient() {
    httpClient.baseUrl = 'https://api.themoviedb.org/3';

    // httpClient.addRequestModifier((request) {
    //   request.headers['api_key'] = '76cc00a9b4531a5957ee79a740980f6e';
    //   return request;
    // });
  }
}
