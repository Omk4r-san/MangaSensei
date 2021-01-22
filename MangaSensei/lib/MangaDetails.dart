import 'package:flutter/material.dart';

class MangaDetails extends StatelessWidget {
  const MangaDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/background.png",
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}
