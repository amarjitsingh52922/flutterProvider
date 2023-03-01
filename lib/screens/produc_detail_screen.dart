import 'package:flutter/material.dart';

class ProductDetailScreens extends StatelessWidget {
  const ProductDetailScreens({super.key});
  static const id = '/ProductDetailScreen';
  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text("Details")),
    );
  }
}
