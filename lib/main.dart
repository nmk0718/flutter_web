import 'package:flutter/material.dart';
import 'package:flutter_web/download.dart';
import 'about.dart';
import 'home.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.noTransition,
      initialRoute: '/',
      title: 'kk',
      getPages: [
        GetPage(name: '/', page: ()=> home()),
        GetPage(name: '/download', page: ()=> Download()),
        GetPage(name: '/about', page: ()=> About()),
      ],
    );
  }
}
