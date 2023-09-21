import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log in"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.blue,
        child: Form(
            child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Enter your Username",
                  border: OutlineInputBorder()),
            )
          ],
        )),
      ),
    );
  }
}
