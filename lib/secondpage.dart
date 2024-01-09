import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Second Page')),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('이전 화면으로 돌아간다.'),
              ElevatedButton(
                  // Navigation - Get.back()
                  onPressed: (() => Get.back()),
                  child: Text('Get.back()')),
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}
