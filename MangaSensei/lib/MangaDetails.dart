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
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 20.0, // soften the shadow
                    spreadRadius: 0.0,
                  )
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
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          child: Text(
                        "One Piece",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                      Text("Author: Eichiro Oda"),
                      Row(
                        children: [
                          Text("Tags:"),
                          SizedBox(
                            height: 15,
                            width: 40,
                            child: FlatButton(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1.0),
                                child: Text(
                                  "Shonen",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 5),
                                ),
                              ),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: SizedBox(
                              height: 15,
                              width: 40,
                              child: FlatButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 1.0),
                                  child: Text(
                                    "Shonen",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 5),
                                  ),
                                ),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: SizedBox(
                              height: 15,
                              width: 40,
                              child: FlatButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 1.0),
                                  child: Text(
                                    "Shonen",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 5),
                                  ),
                                ),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Rating:"),
                          Icon(
                            Icons.star,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
