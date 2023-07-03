import 'package:flutter/material.dart';

/*
  1. Write stless and press enter.
  2. Write the name of class same as file name but write in PascalCase
  3. Import the Material Package
  4. Replace const PlaceHolder() with Scaffold
  5. Write your code inside the Scaffold
    return Scaffold(
      body: Text('')
      );
*/

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("This is CartPage")),
    );
  }
}
