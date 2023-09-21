import 'package:flutter/material.dart';

class BuildAlert {
  static showAlertDialog(BuildContext context, title, message, button) {
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
}
