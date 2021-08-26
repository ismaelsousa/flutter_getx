import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/src/Counter/counter_controller.dart';
import 'package:get/get.dart';
import 'package:getx/src/Data/view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("Total of clicks: ${c.count}")),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to another screen"),
          onPressed: () => Get.to(Another()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: c.increment,
      ),
    );
  }
}
