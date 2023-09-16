import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  const TextPage({super.key});

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Text Page"),
        ),
        body: const Column(
          children: [
            Text(
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Schaler'),
                "Hello World"),
            Text(
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                "Hello World 2"),
          ],
        ));
  }
}
