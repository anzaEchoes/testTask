import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks/ui/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Task Managger',
      debugShowCheckedModeBanner: false,
      initialRoute: '/homeList',
      getPages: [GetPage(name: "/homeList", page: () => Home())],
    );
  }
}
