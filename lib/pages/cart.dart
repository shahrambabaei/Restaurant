import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.add_shopping_cart_outlined,
          size: 30,
          color: Colors.black,
        ),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: Text("Cart", style: TextStyle(fontSize: 20)))
      ],
    )));
  }
}
