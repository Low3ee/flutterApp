import 'package:flutter/material.dart';

import 'column.page.dart';
import 'container.page.dart';
import 'datapage.dart';
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
      backgroundColor: const Color.fromARGB(136, 51, 4, 221),
      appBar: AppBar(
        title: const Center(
            child: Text(
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
                'HOME')),
        backgroundColor: const Color.fromARGB(125, 66, 25, 179),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Assets/maxresdefault.jpg'),
                fit: BoxFit.cover)),
        child: ListView(
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ColumnPage()));
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
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DataPage()));
              },
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text("4.) Data Page"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
