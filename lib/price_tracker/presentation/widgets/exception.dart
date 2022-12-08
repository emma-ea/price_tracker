import 'package:flutter/material.dart';

class ExceptionScreen extends StatelessWidget {
  final String error;
  const ExceptionScreen({super.key, this.error = ""});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text("Something went wrong.\n$error")),
      )
    );
  }
}