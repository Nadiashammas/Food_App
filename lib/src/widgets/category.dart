import 'package:flutter/material.dart';
import 'package:food_ordering_app/src/models/category.dart';

import '../commons.dart';
import 'customText.dart';

List<Category> CategoryList = [
  Category(name: "Salad", image: "salad.png"),
  Category(name: "Steak", image: "steak.png"),
  Category(name: "Fast Food", image: "sandwich.png"),
  Category(name: "Deserts", image: "ice-cream.png"),
  Category(name: "Sea Food", image: "fish.png"),
  Category(name: "Drinks", image: "pint.png"),
  // Category(name: "Salad", image: "salad.png"),
];

class categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CategoryList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: Colors.red[50],
                        offset: Offset(4, 6),
                        blurRadius: 20)
                  ]),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.asset("images/${CategoryList[index].image}",
                        width: 55),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                customText(
                  text: CategoryList[index].name,
                  size: 14,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
