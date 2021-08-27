import 'package:get/get.dart';

class ProfileController extends GetxController {
  var stars = 0.obs;

  void increment() {
    stars.value += stars.value;
  }

  @override
  void onInit() {
    stars.value = 100;
    super.onInit();
  }
}
