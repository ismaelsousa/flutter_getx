import 'package:get/get.dart';
import 'package:getx/models/post.dart';
import 'package:getx/pages/detail/detail_bindling.dart';
import 'package:getx/pages/detail/detail_page.dart';
import 'package:getx/pages/feed/feed_binding.dart';
import 'package:getx/pages/feed/feed_page.dart';
import 'package:getx/pages/home/home_binding.dart';
import 'package:getx/pages/home/home_page.dart';
import 'package:getx/pages/root/root_binding.dart';
import 'package:getx/pages/root/root_page.dart';
import 'package:getx/routes/app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
        name: AppRoutes.ROOT, page: () => RootPage(), binding: RootBinding()),
    GetPage(
        name: AppRoutes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: AppRoutes.FEED, page: () => FeedPage(), binding: FeedBinding()),
    GetPage(
        arguments: Post,
        name: AppRoutes.DETAIL,
        page: () => DetailPage(),
        binding: DetailBinding()),
  ];
}
