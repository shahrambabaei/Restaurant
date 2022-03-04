import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.settings,
          size: 30,
          color: Colors.black,
        ),
        Container(
            margin: const EdgeInsets.only(top: 10),
            child: const Text("Setting", style: TextStyle(fontSize: 20)))
      ],
    )));
  }
}
