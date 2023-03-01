import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopping_app/widgets/grid_product_item.dart';

import '../providers/product.dart';
import '../providers/product_provider.dart';

class MainShoppingScreen extends StatelessWidget {
  MainShoppingScreen({super.key});
  static String id = "/MainShoppingScreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("My Phone Shop")),
      body: ProductsGrid(),
    ));
  }
}

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final availProducts = productData.availProducts;
    return ChangeNotifierProvider<Product>(
      create: (context) => availProducts[index],
      child: GridView.builder(
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
    );
  }
}
