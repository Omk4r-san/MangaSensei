import 'package:MangaSensei/Searchpage.dart';
import 'package:flutter/material.dart';
import 'package:MangaSensei/Tile.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "MangaSensei",
          ),
        ),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            20,
            (index) {
              return MangaTile();
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Searchpage()));
        },
        tooltip: 'Search',
        child: Icon(Icons.search),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
