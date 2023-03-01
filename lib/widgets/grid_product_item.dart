import 'package:flutter/material.dart';
import 'package:provider_shopping_app/screens/produc_detail_screen.dart';

class GridProductItem extends StatelessWidget {
  const GridProductItem(
      {super.key, required this.id, required this.title, required this.image});
  final String id, title, image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: GridTile(
        child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ProductDetailScreens.id,arguments: id);
            },
            child: Image.asset(image)),
        footer: GridTileBar(
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10),
          ),
          backgroundColor: Colors.black54,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ),
      ),
    );
  }
}
