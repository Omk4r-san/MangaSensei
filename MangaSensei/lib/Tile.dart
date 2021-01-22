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
          elevation: 5,
          margin: EdgeInsets.all(5),
          child: Stack(
            children: [
              Image(image: AssetImage("assets/background.png")),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: RaisedButton(
                      color: Colors.transparent,
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
          )),
    );
  }
}
