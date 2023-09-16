import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  const RowPage({super.key});

  @override
  State<RowPage> createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Page"),
      ),
      body: Row(children: [
        Container(
            height: 200,
            width: 100,
            color: Colors.amber,
            child: const Text("Row ni")),
        Container(
            height: 200,
            width: 100,
            color: Colors.purple,
            child: const Text("Row 2")),
        Container(
            height: 200,
            width: 100,
            color: Colors.lightGreen,
            child: const Text("Row 3"))
      ]),
    );
  }
}
