import 'package:flutter/material.dart';

class Buttons {
  Future<Widget> ButtonBuilder() {
    Widget homeButton = TextButton(
      child: const Text("Continue"),
      onPressed: () {
        Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()))
            .then((value) => Navigator.of(context).pop());
      },
    );
  }
}
