import 'package:flutter/material.dart';
import 'package:mero_dokan/features/shop/data/product.dart';
import 'package:mero_dokan/features/shop/presentation/product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProductCard(Product(
              "assets/images/cart/doll.jpeg", "Doll ${index + 1}", "Rs. 1000"));
        });
  }
}
