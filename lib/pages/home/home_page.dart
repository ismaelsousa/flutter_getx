import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
      ),
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
