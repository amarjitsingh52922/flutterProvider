import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String image;
  final double price;
  bool isFavorite = false;

  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.price,
      this.isFavorite = false});

  void toggleisFav() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
