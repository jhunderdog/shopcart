import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopcart/catalog_sample.dart';

import 'cart.dart';

class Catalog extends StatelessWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog View",
          style: TextStyle(
            fontSize: 27.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            CatalogSample(),
            ElevatedButton(
                onPressed: () => Get.to(() => Cart()),
                child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                      child: Text("Go the Cart"),
                    ))),
            const SizedBox(
              height: 5.0,
            )
          ],
        ),
      ),
    );
  }
}
