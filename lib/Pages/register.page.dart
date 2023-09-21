// ignore_for_file: dead_code

import 'package:flutter/material.dart';

import '../data/data.dart';
import 'home.page.dart';
import 'mobileApp/login.page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController getFName = TextEditingController();
  TextEditingController getLName = TextEditingController();
  TextEditingController getEmail = TextEditingController();

  final _registerKey = GlobalKey<FormState>();

  showAlertDialog(BuildContext context, title, message, button) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [button],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Register Here"))),
      body: Form(
          key: _registerKey,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
                  child: TextFormField(
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Your Name";
                      }
                      return null;
                    }),
                    controller: getFName,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: "First Name"),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
                  child: TextFormField(
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Your Last Name.";
                      }
                      return null;
                    }),
                    controller: getLName,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: "Last Name"),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter A Valid Email Address.";
                      }
                      return null;
                    },
                    controller: getEmail,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email Address"),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromARGB(255, 54, 151, 161)),
                  ),
                  onPressed: () {
                    String message;
                    String title;
                    if (_registerKey.currentState!.validate()) {
                      title = "Succesful";
                      message = "You have registered Succesfully";
                      Widget homeButton = TextButton(
                        child: const Text("Continue"),
                        onPressed: () {
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()))
                              .then((value) => Navigator.of(context).pop());
                        },
                      );

                      UserData.setData(
                          getFName.text, getLName.text, getEmail.text, true);
                      showAlertDialog(context, title, message, homeButton);
                    } else {
                      title = "Registration Unsuccessful";
                      message =
                          "There was an error in your registration. Please try again.";
                      Widget okButton = TextButton(
                        child: const Text(
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            "<"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const LogInPage())));
                        },
                      );

                      showAlertDialog(context, title, message, okButton);
                    }
                  },
                  child: const Text("Enter"),
                ),
              ),
            ],
          )),
    );
  }
}
