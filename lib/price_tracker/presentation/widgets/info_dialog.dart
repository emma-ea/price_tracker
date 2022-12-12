import 'package:flutter/material.dart';

Future<void> infoDialog({
  required BuildContext context, 
  required String title, 
  required String msg, 
  VoidCallback? retry,
  VoidCallback? cancel
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(msg),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: cancel ?? () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: retry, 
            child: const Text("Retry")
          )
        ],
      );
    },
  );
}