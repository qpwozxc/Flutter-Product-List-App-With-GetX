import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controller/controller.dart';
import 'package:getx_practice/view/product_tile.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyPage'),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.view_list_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Obx(
            () => GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ), // Gridview의 모양을 결정

              itemBuilder: (context, index) {
                return ProductTile(
                  controller.productList[index],
                );
              },
              itemCount: controller.productList.length,
            ),
          ),
        ),
      ),
    );
  }
}
