import 'package:flutter/material.dart';
import 'package:shopping/widgets/product/product-card-item.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;

  const ProductList({@required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: scrollDirection,
        children: [
          ProductCardItem(
            brand: 'Toc-stock',
            image: "assets/product-1.png",
            price: 100,
            title: 'Cadeira Preta gurmet para fresco',
          ),
          ProductCardItem(
            brand: 'Cassio',
            image: "assets/product-2.png",
            price: 200,
            title: 'Relogio Analógico',
          ),
          ProductCardItem(
            brand: 'Amazon',
            image: "assets/product-3.png",
            price: 320.54,
            title: 'Amazon Alexa',
          ),
          ProductCardItem(
            brand: 'Xiaomi',
            image: "assets/product-7.png",
            price: 199.99,
            title: 'Air-Pods Xiaomi',
          ),
          ProductCardItem(
            brand: 'Nike',
            image: "assets/product-10.png",
            price: 59.60,
            title: 'Nike T-Shirt Dry Fit',
          ),
        ],
      ),
    );
  }
}
