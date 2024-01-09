import 'package:flutter/material.dart';
import 'package:getx_practice/home.dart';
import 'package:get/get.dart';
import 'package:getx_practice/secondpage.dart';
import 'package:getx_practice/thirdpage.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Practice',
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/secondpage', page: () => SecondPage()),
        GetPage(name: '/thirdpage', page: () => ThirdPage()),
      ],
    );
  }
}
