import 'package:flutter/material.dart';
import 'package:provider_shopping_app/widgets/grid_product_item.dart';

import '../models/product.dart';

class MainShoppingScreen extends StatelessWidget {
  MainShoppingScreen({super.key});
  static String id = "/MainShoppingScreen";
  final List<Product> availProducts = [
    Product(
        id: '1001',
        title: 'Samsung',
        description: "it's a phone",
        image: 'assets/images/samsung.jpeg',
        price: 1000),
    Product(
        id: '1002',
        title: 'iphone',
        description: "it's a phone",
        image: 'assets/images/iphone.jpg',
        price: 1000),
    Product(
        id: '1003',
        title: 'realme',
        description: "it's a phone",
        image: 'assets/images/realme.jpeg',
        price: 1000),
    Product(
        id: '1004',
        title: 'nokia',
        description: "it's a phone",
        image: 'assets/images/nokia.jpg',
        price: 1000),
    Product(
        id: '1005',
        title: 'oneplus',
        description: "it's a phone",
        image: 'assets/images/oneplus.jpeg',
        price: 1000),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("My Phone Shop")),
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: availProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return GridProductItem(
              id: availProducts[index].id,
              title: availProducts[index].title,
              image: availProducts[index].image);
        },
      ),
    ));
  }
}
