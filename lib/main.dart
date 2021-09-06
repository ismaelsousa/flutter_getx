import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/routes/app_pages.dart';
import 'package:getx/routes/app_routes.dart';
import 'package:getx/themes/app_themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'getx app',
      initialRoute: AppRoutes.ROOT,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemes.dark,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}
