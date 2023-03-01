import 'package:flutter/material.dart';
import 'package:provider_shopping_app/screens/main_shopping_screen.dart';
import 'package:provider_shopping_app/screens/produc_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.red),
      home: MyHomePage(),
      routes: {
        ProductDetailScreens.id: (context) => ProductDetailScreens(),
        MainShoppingScreen.id: (context) => MainShoppingScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainShoppingScreen();
  }
}
