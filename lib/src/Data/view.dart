import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/Counter/counter_controller.dart';

class Another extends StatelessWidget {
  final Controller c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            Get.changeTheme(
                Get.isDarkMode ? ThemeData.light() : ThemeData.dark())
          },
          child: Text(
            "${c.count}",
          ),
        ),
      ),
    );
  }
}
