import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {
  const ColumnPage({super.key});

  @override
  State<ColumnPage> createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Column")),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                alignment: Alignment.center,
                child: const Text("container 1"),
              ),
              Container(
                  height: 200,
                  width: 200,
                  color: Colors.cyan,
                  alignment: Alignment.center,
                  child: const Text("Container 2")),
              Container(
                height: 200,
                width: 200,
                color: Colors.deepOrange,
                alignment: Alignment.center,
                child: const Text("COntainer 3"),
              )
            ],
          ),
        ));
  }
}
