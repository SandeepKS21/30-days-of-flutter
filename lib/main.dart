import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// this is our stateless widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("30 Days of flutter"),
          ),
        ),
      ),
    );
  }
}
