import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopcart/card_c.dart';
import 'package:shopcart/product_c.dart';

class CatalogSample extends StatelessWidget {
  final productController = Get.put(ProductController());
  CatalogSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Flexible(
        child: ListView.builder(
            itemCount: productController.products.length,
            itemBuilder: (BuildContext context, int index) {
              return CatalogSampleCard(index: index);
            })));
  }
}

class CatalogSampleCard extends StatelessWidget {
  final cardController = Get.put(CartController());
  final ProductController productController = Get.find();
  final int index;

  CatalogSampleCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(150.0),
            child: Image.network(
              productController.products[index].imageUrl,
              height: 180.0,
              width: 180.0,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Text(
              productController.products[index].name,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Text(
              '${productController.products[index].price}',
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              cardController.addProduct(productController.products[index]);
            },
            icon: const Icon(
              Icons.add_shopping_cart_outlined,
              size: 40.0,
              color: Colors.pinkAccent,
            ),
          )
        ],
      ),
    );
  }
}
