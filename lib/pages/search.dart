import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.search,
          size: 30,
          color: Colors.black,
        ),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: const Text(
              "Search",
              style: TextStyle(fontSize: 20),
            ))
      ],
    )));
  }
}
