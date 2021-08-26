import 'package:get/get.dart';

class Api extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://api.covid19api.com';
  }
}
