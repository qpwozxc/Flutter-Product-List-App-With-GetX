import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextButtonWidget extends StatefulWidget {
  const TextButtonWidget({super.key});

  @override
  State<TextButtonWidget> createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text('Get.toNamed()'),
          ElevatedButton(
              onPressed: (() => Get.toNamed('/thirdpage')),
              child: Text('Get.toNamed()')),
        ],
      ),
    );
  }
}
