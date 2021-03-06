import 'package:flutter/material.dart';
import 'package:shopping/pages/cart.page.dart';
import 'package:shopping/pages/login.page.dart';

import 'home.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          HomePage(),
          CartPage(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: TabBar(
        tabs: [
          Tab(
            icon: Icon(
              Icons.home,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.perm_identity,
            ),
          ),
        ],
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5),
        indicatorColor: Colors.blue,
      ),
    );
  }
}
