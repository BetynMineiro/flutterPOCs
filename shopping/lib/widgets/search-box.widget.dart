import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}
