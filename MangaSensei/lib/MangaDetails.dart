import 'package:flutter/material.dart';

class MangaDetails extends StatelessWidget {
  const MangaDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3,
          color: Colors.grey,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 15.0, // soften the shadow
                      spreadRadius: 0.3,
                      offset: Offset(
                        2.0,
                        2.0,
                      ))
                ]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(
                    image: AssetImage(
                      "assets/Manga.jpg",
                    ),
                    height: 150,
                  ),
                ),
              ),
              Text("One Piece")
            ],
          ),
        ),
      ],
    ));
  }
}
