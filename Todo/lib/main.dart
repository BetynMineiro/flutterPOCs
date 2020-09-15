import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  var items = new List<Item>();

  HomePage() {
    items = [];
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var newTaskController = TextEditingController();
  add() {
    setState(() {
      widget.items.add(new Item(title: newTaskController.text, done: false));
      newTaskController.clear();
      save();
    });
  }

  remove(int idx) {
    setState(() {
      widget.items.removeAt(idx);
      save();
    });
  }

  Future load() async {
    var prefs = await SharedPreferences.getInstance();
    var data = prefs.getString("data");
    if (data != null) {
      Iterable decoded = jsonDecode(data);
      var result = decoded.map((e) => Item.fromJson(e)).toList();
      setState(() {
        widget.items = result;
      });
    }
  }

  save() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString("data", jsonEncode(widget.items));
  }

  _HomePageState() {
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: Icon(Icons.menu),
          // actions: <Widget>[
          //   Icon(Icons.plus_one),
          // ],
          title: TextFormField(
        controller: newTaskController,
        keyboardType: TextInputType.text,
        style: TextStyle(fontSize: 24, color: Colors.white),
        decoration: InputDecoration(
          labelText: "Nova Tarefa",
          labelStyle: TextStyle(color: Colors.white),
        ),
      )),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final item = widget.items[index];
          return Dismissible(
            onDismissed: (direction) {
              remove(index);
            },
            key: Key(item.title),
            child: CheckboxListTile(
              value: item.done,
              onChanged: (value) {
                setState(() {
                  item.done = value;
                  save();
                });
              },
              title: Text(item.title),
            ),
            background: Container(
              color: Colors.red[50],
            ),
          );
        },
        itemCount: widget.items.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
