import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';

class ProductCardItem extends StatelessWidget {
  final String image;
  final String title;
  final String brand;
  final double price;

  const ProductCardItem(
      {@required this.image,
      @required this.title,
      @required this.brand,
      @required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                    brand: brand,
                    image: image,
                    price: price,
                    title: title,
                  ),
                ),
              );
            },
            child: Image.asset(
              image,
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            brand,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "\$ $price",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Color(0xFF00C569),
            ),
          ),
        ],
      ),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(5),
      color: Colors.black12,
      width: 170,
    );
  }
}
