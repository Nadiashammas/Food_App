import 'package:flutter/material.dart';
import 'package:food_ordering_app/src/commons.dart';

class customText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  const customText({@required this.text, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size ?? 16,
        color: color ?? black,
      ),
    );
  }
}
