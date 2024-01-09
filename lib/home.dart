import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getx_practice/secondpage.dart';
import 'package:getx_practice/thirdpage.dart';
import 'package:getx_practice/w_text_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GetX Practice')),
      backgroundColor: Colors.blueGrey,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('새로운 화면으로 이동한다.'),
                  ElevatedButton(
                      onPressed: (() => Get.to(
                            SecondPage(),
                          )),
                      child: Text('Get.to()')),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('미리 설정해둔 이름을 통해 새로운 화면으로 이동한다.'),
                  ElevatedButton(
                      onPressed: (() => Get.toNamed('/thirdpage')),
                      child: Text('Get.toNamed()')),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
