import 'package:get/get.dart';
import 'package:getx/models/post.dart';
import 'package:getx/pages/feed/feed_provider.dart';

class FeedController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = true;
  @override
  void onInit() {
    FeedProvider().getPostList(beforeSend: () {
      print('before send');
    }, onSuccess: (posts) {
      postsList.addAll(posts);
      isLoading = false;
      update();
      print('Success');
    }, onError: (error) {
      isLoading = false;
      update();
      print('error');
    });
    super.onInit();
  }
}
