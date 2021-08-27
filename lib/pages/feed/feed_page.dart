import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx/pages/feed/components/post_list_item.dart';
import 'package:getx/pages/feed/feed_controller.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetBuilder<FeedController>(
          builder: (controller) {
            return Center(
              child: controller.isLoading
                  ? CircularProgressIndicator()
                  : ListView.builder(
                      itemCount: controller.postsList.length,
                      itemBuilder: (context, index) =>
                          PostListItem(post: controller.postsList[index])),
            );
          },
        ),
      ),
    );
  }
}
