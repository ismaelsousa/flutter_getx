import 'package:get/get.dart';

class ProfileController extends GetxController {
  var stars = 115.obs;

  void increment() {
    stars.value += stars.value;
  }
}
