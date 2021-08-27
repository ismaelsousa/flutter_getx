import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx/pages/profile/profile_controller.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(75),
                  child: Image.network(
                    "https://yt3.ggpht.com/y7ThyOLy2l620bh4FV8IwQbE7OcB7CYyM9ytVYfHLfcW70j5i7gwe_ehXD9iDFyQEaYPYo11=s88-c-k-c0x00ffffff-no-rj-mo",
                    width: 150,
                    height: 150,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
            Text(
              "Ismael Sousa",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Obx(() => Text(
                  "Stars: ${controller.stars.value}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                )),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.amber)),
                onPressed: controller.increment,
                child: Text(
                  'Star',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      )),
    );
  }
}
