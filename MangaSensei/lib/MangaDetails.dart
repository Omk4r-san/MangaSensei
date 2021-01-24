import 'package:flutter/material.dart';

class MangaDetails extends StatelessWidget {
  const MangaDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                MangaInfo(),
                Tabbar(),
                Container(
                    decoration: BoxDecoration(),
                    height: 50,
                    child: ReadManga()),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: Icon(
            Icons.bookmark,
            color: Colors.white,
          ),
        ));
  }
}

//Manga Details Part of the page

class MangaInfo extends StatelessWidget {
  const MangaInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
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
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
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
                                style:
                                    TextStyle(color: Colors.black, fontSize: 5),
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
    );
  }
}

//Tabs part of the page

class Tabbar extends StatelessWidget {
  const Tabbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: TabBar(
                      labelColor: Colors.green,
                      indicatorColor: Colors.green,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(child: Text("Synopsis")),
                              Icon(Icons.note)
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(child: Text("Chapters")),
                              Icon(Icons.book)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 350, //height of TabBarView
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey, width: 0.5))),
                    child: TabBarView(
                      children: <Widget>[
                        Container(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "As a child, Monkey D. Luffy was inspired to become a pirate by listening to the tales of the buccaneer Red-Haired Shanks. But Luffy's life changed when he accidentally ate the Gum-Gum Devil Fruit and gained the power to stretch like rubber...at the cost of never being able to swim again! Years later, still vowing to become the king of the pirates, Luffy sets out on his adventure...one guy alone in a rowboat, in search of the legendary One Piece, said to be the greatest treasure in the world...sort",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: MangaChapters(),
                          ),
                        ),
                      ],
                    ),
                  )
                ])));
  }
}

//Read button
class ReadManga extends StatelessWidget {
  const ReadManga({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {},
        color: Colors.green,
        child: Text("Start Reading"),
      ),
    );
  }
}

class MangaChapters extends StatelessWidget {
  const MangaChapters({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int count = 15;
    return Container(
        child: ListView.builder(
      itemCount: count,
      itemBuilder: (context, index) {
        return ListTile(
          title: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.3, color: Colors.white))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Chapter"),
              )),
        );
      },
    ));
  }
}
