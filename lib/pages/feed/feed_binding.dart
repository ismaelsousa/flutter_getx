import 'package:get/get.dart';
import 'package:getx/pages/feed/feed_controller.dart';

class FeedBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FeedController>(() => FeedController());
  }
}
