import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void ShowSuccessMessage(BuildContext context, title, body, Function? callback) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      //builder
      return AlertDialog(
        title: Text(title),
        content: Text(body),
        actions: [
          CupertinoDialogAction(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
                if (callback != null) {
                  callback();
                }
              }),
        ],
      );
    },
  );
}
