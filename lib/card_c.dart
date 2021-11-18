import 'package:get/get.dart';
import 'package:shopcart/product_m.dart';

class CartController extends GetxController {
  final _products = {}.obs;
  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar("Product", " You have added your ${product.name} to the cart",
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2),
        snackStyle: SnackStyle.GROUNDED);
  }

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get products => _products;
  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();
  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}
