import 'package:flutter/material.dart';
import 'package:shopping/pages/tabs.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 3,
        child: Padding(
            padding: EdgeInsets.only(
              bottom: 10,
            ),
            child: TabsPage()),
      ),
    );
  }
}
