import 'package:flutter/material.dart';
import 'package:mero_dokan/features/shop/data/product.dart';

class ProductCard extends StatelessWidget {
  final Product productData;

  const ProductCard(this.productData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Image.asset(
            productData.imageName,
            height: 150,
          ),
          Text(productData.titleText),
          Text(productData.subText)
        ],
      ),
    );
  }
}
