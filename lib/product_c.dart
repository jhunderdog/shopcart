import 'package:get/get.dart';
import 'package:shopcart/product_m.dart';

import 'firebase.dart';

class ProductController extends GetxController {
  final products = <Product>[].obs;
  @override
  void onInit() {
    products.bindStream(Firebase().getAllProducts());
    super.onInit();
  }
}
