import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Container(
        color: Colors.blueAccent,
        height: 200,
        width: 350,
        alignment: Alignment.center,
        child: const Text('Container ni'),
      ),
    );
  }
}
