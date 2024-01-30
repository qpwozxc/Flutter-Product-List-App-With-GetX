import 'package:get/get.dart';
import 'package:getx_practice/data/services.dart';
import 'package:getx_practice/model/product_model.dart';

class Controller extends GetxController {
  var productList = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    var products = await Services.fetchProducts().then((products) {
      if (products != null) {
        productList.value = products;
      }
    });
  }
}
