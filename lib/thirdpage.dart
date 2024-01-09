import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/secondpage.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Third Page')),
        body: Container(
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('이전 화면을 제거하고 새로운 화면으로 이동한다.'),
            ElevatedButton(
                // Navigation - Get.off()
                onPressed: (() => Get.off(SecondPage())),
                child: Text('Get.off()')),
          ]),
        ));
  }
}
