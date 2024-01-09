import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0;
  var count2 = 0.obs;

  void increase() {
    count++;
    update();
  }

  void increase2() {
    count2.value++;
  }
}
