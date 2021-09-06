import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx/pages/feed/feed_page.dart';
import 'package:getx/pages/home/home_page.dart';
import 'package:getx/pages/profile/profile_page.dart';
import 'package:getx/pages/root/root_controller.dart';
import 'package:getx/routes/app_routes.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: [HomePage(), FeedPage(), ProfilePage()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          items: [
            _bottomNavigationBarItem(icon: CupertinoIcons.home, label: 'Home'),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.envelope, label: 'Feed'),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.person, label: 'Profile'),
          ],
        ),
      );
    });
  }

  /// Render
  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
