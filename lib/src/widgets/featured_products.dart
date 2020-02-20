import 'package:flutter/material.dart';
import 'package:food_ordering_app/src/models/products.dart';
import 'package:food_ordering_app/src/widgets/customText.dart';

import '../commons.dart';

List<product> productList = [
  product(
      name: "Salad",
      price: 5.99,
      rating: 4.2,
      vendor: "GoodFood",
      wishList: true,
      imaqe: "1.jpg"),
  product(
      name: "bretoos",
      price: 12.99,
      rating: 4.0,
      vendor: "GoodFood",
      wishList: false,
      imaqe: "5.jpg"),
  product(
      name: "Pizza",
      price: 9.99,
      rating: 4.6,
      vendor: "GoodFood",
      wishList: true,
      imaqe: "3.jpg"),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(12, 14, 16, 12),
            child: Container(
              height: 220,
              width: 200,
              decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.red[50],
                      offset: Offset(15, 5),
                      blurRadius: 30)
                ],
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "images/${productList[index].imaqe}",
                    height: 140,
                    width: 140,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: customText(
                          text: productList[index].name,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[300],
                                  offset: Offset(1, 1),
                                  blurRadius: 4)
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: productList[index].wishList
                                ? Icon(
                                    Icons.favorite,
                                    color: red,
                                    size: 18,
                                  )
                                : Icon(
                                    Icons.favorite_border,
                                    color: red,
                                    size: 18,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: customText(
                                text: productList[index].rating.toString(),
                                color: grey,
                                size: 14),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[400],
                            size: 16,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: customText(
                          text: "\$ ${productList[index].price}",
                          weight: FontWeight.w700,
                          size: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
