import 'package:flutter/material.dart';
import 'package:MangaSensei/MangaDetails.dart';

class MangaTile extends StatelessWidget {
  const MangaTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 120,
      color: Colors.transparent,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 9,
          margin: EdgeInsets.all(5),
          child: Container(
            width: 20,
            child: Stack(
              children: [
                Image(
                  image: AssetImage("assets/Manga.jpg"),
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: RaisedButton(
                        color: Colors.grey.withOpacity(0.7),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MangaDetails()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                            "Manga Title",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
