import 'dart:html';

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("hello world", 
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
              ),
            backgroundColor: Colors.white12,
            centerTitle: true,
          ),
      body: 
         
           const Center(
              child: Text("Hello World"),
            )
    
    );
  }
}