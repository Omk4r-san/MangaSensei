import 'package:flutter/material.dart';

class Searchpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search Manga Here",
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
