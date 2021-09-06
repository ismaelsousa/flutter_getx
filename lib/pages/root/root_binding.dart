import 'package:get/get.dart';
import 'package:getx/pages/feed/feed_controller.dart';
import 'package:getx/pages/home/home_controller.dart';
import 'package:getx/pages/profile/profile_controller.dart';
import 'package:getx/pages/root/root_controller.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(() => RootController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<FeedController>(() => FeedController());
  }
}
