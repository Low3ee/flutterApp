import 'package:flutter/material.dart';

import '../data/data.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("My Data Page")),
        ),
        body: Center(
          child: Column(children: [
            Row(
              children: [
                const SizedBox(width: 100, child: Text("First Name: ")),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Center(child: Text(UserData.getFName()))),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.all(16)),
            Row(
              children: [
                const SizedBox(width: 100, child: Text("Last Name: ")),
                SizedBox(
                  height: 50,
                  width: 500,
                  child: DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Center(child: Text(UserData.getLName()))),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.all(16)),
            Row(
              children: [
                const SizedBox(width: 100, child: Text("Gender: ")),
                SizedBox(
                  height: 50,
                  width: 500,
                  child: DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Center(child: Text(UserData.getGender()))),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.all(16)),
            Row(
              children: [
                const SizedBox(width: 100, child: Text("Age: ")),
                SizedBox(
                  height: 50,
                  width: 500,
                  child: DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Center(child: Text(UserData.getAge().toString()))),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.all(16)),
            Row(
              children: [
                const SizedBox(width: 100, child: Text("Email: ")),
                SizedBox(
                  height: 50,
                  width: 500,
                  child: DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Center(child: Text(UserData.getEmail()))),
                )
              ],
            ),
          ]),
        ));
  }
}
