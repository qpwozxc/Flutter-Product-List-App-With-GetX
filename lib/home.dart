import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getx_practice/controllers/count_controller.dart';
import 'package:getx_practice/secondpage.dart';
import 'package:getx_practice/thirdpage.dart';

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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
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
                    Text('snackbar를 띄운다.'),
                    ElevatedButton(
                        onPressed: (() => Get.snackbar(
                              'Snackbar Title',
                              'Snackbar Message',
                              snackPosition: SnackPosition.BOTTOM,
                            )),
                        child: Text('Get.snackbar()')),
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
                    Text('dialogue를 띄운다.'),
                    ElevatedButton(
                        onPressed: (() => Get.defaultDialog(
                              title: 'Dialogue Title',
                              middleText: 'Dialogue Message',
                            )),
                        child: Text('Get.defaultDialog()')),
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
                    Text('bottomsheet을 띄운다.'),
                    ElevatedButton(
                        onPressed: (() => Get.bottomSheet(Container(
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
                                  Text('bottomSheet'),
                                  ElevatedButton(
                                      onPressed: (() => Get.back()),
                                      child: Text('Get.back()')),
                                ],
                              ),
                            ))),
                        child: Text('Get.bottomSheet()')),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  children: [
                    Text('상태 관리 - SimpleBuilder'),
                    GetBuilder<CountController>(
                      init: CountController(),
                      builder: (_) => Text(
                        '현재 카운트: ${_.count}',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: (() => Get.find<CountController>().increase()),
                      child: Text('카운트 증가'),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  children: [
                    Text('상태 관리 - Reactive(GetX)'),
                    GetX<CountController>(
                      init: CountController(),
                      builder: (_) => Text(
                        '현재 카운트: ${_.count2.value}',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: (() =>
                          Get.find<CountController>().increase2()),
                      child: Text('카운트 증가'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
