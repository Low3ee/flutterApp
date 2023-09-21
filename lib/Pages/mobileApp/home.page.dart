import 'dart:ui';

import 'package:flutter/material.dart';

import 'Assets/alertBuilder.dart';
import 'dataHandler/data.dart';
import 'login.page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController getUserName = TextEditingController();
  TextEditingController getPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App ni lowee"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Form(
            key: _formKey,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 155, 188, 245)),
              child: Column(children: [
                const SizedBox(
                  height: 50,
                ),
                const Icon(Icons.person_2_rounded, size: 30),
                const Text("Register Here"),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Your Name.";
                      }
                      return null;
                    },
                    controller: getUserName,
                    decoration: const InputDecoration(
                        hintText: "Username", border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a Password";
                      } else if (value.length < 5) {
                        return "Password is too short.";
                      }
                      return null;
                    },
                    controller: getPassword,
                    decoration: const InputDecoration(
                        hintText: "Password", border: OutlineInputBorder()),
                    obscureText: true,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      String title = "Succesful Registration";
                      String message =
                          "You have succesfully registered your info.";
                      Widget button = TextButton(
                          onPressed: () {
                            Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LogInPage()))
                                .then((value) => Navigator.of(context).pop());
                          },
                          child: const Text("OK"));
                      UserData.setData(getUserName.text, getPassword.text);
                      BuildAlert.showAlertDialog(
                          context, title, message, button);
                    }
                  },
                  child: const Text("OK"),
                )
              ]),
            )));
  }
}
