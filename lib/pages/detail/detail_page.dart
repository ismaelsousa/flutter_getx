import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/models/post.dart';

class DetailPage extends StatelessWidget {
  final Post post = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post ${post.id}"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            ClipOval(
              child: Image.network(
                'https://picsum.photos/200/200?random=${post.id}',
                height: 200,
                width: 200,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Expanded(
                  child: Text(
                post.body,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
