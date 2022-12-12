import 'package:flutter/material.dart';
import 'package:price_tracker/core/failures.dart';

class ExceptionScreen extends StatelessWidget {
  final String error;
  const ExceptionScreen(Failure failure, {super.key, this.error = ""});

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