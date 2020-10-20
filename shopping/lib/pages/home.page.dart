import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: Color(0xFFF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 60,
            ),
            search(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categorias",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: categoryList(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text("See All"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: productList(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget search() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(
        left: 15,
      ),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(128)),
      child: Row(
        children: [
          Icon(Icons.search),
          Container(
            width: 300,
            padding: EdgeInsets.only(
              left: 10,
            ),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "Search...",
                labelStyle: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget categoryList() {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryItem(),
          categoryItem(),
          categoryItem(),
          categoryItem(),
          categoryItem(),
          categoryItem(),
          categoryItem(),
          categoryItem(),
        ],
      ),
    );
  }

  Widget categoryItem() {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            blurRadius: 5,
            spreadRadius: 2,
          )
        ],
        borderRadius: BorderRadius.circular(64),
      ),
      child: Image.asset("assets/Icon_Devices.png"),
    );
  }

  Widget productList(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          productItem(context),
          productItem(context),
          productItem(context),
          productItem(context),
        ],
      ),
    );
  }

  Widget productItem(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(),
                ),
              );
            },
            child: Image.asset(
              "assets/product-1.png",
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
              "Titulo do produto",
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
            "Marca",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "\$ 200",
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
