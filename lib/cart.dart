import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopcart/card_c.dart';
import 'package:shopcart/cart_products.dart';
import 'package:shopcart/cart_total.dart';

class Cart extends StatelessWidget {
  CartController controller = Get.put(CartController());
  Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Cart View",
            style: TextStyle(
              fontSize: 27.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const CartProducts(),
            CartTotal(),
          ],
        ));
  }
}
