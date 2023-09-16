import 'package:flutter/material.dart';

import 'column.page.dart';
import 'container.page.dart';
import 'row.page.dart';
import 'text.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('HOME'))),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ContainerPage()));
            },
            child: const Card(
              child: Padding(
                  padding: EdgeInsets.all(12), child: Text("1.) Container")),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ColumnPage()));
            },
            child: const Card(
              child: Padding(
                  padding: EdgeInsets.all(12), child: Text("2.) Column")),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const RowPage()));
            },
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text("3.) Row"),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TextPage()));
            },
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text("4.) Text Page"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
