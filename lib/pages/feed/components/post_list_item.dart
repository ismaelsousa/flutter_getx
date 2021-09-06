import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/models/post.dart';
import 'package:get/get.dart';
import 'package:getx/routes/app_routes.dart';

class PostListItem extends StatelessWidget {
  final Post post;

  const PostListItem({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(AppRoutes.DETAIL, arguments: post),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withAlpha(15),
                  blurRadius: 1,
                  spreadRadius: 1,
                  offset: Offset(0, 1))
            ],
            borderRadius: BorderRadius.circular(7)),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(top: 10, right: 20, bottom: 15, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.network(
                    'https://picsum.photos/50/50?random=${post.id}',
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Text(
                  post.body,
                  style: TextStyle(color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
