import 'package:flutter/material.dart';

import 'customText.dart';

class BottomNavIcon extends StatelessWidget {
  final String image;
  final String name;

  const BottomNavIcon({Key key, this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Image.asset(
              "images/$image",
              width: 20,
              height: 20,
            ),
            SizedBox(
              height: 2,
            ),
            customText(
              text: name,
              size: 15,
            )
          ],
        ));
  }
}
