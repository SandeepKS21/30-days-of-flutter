import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: const Center(
          child: Text(
        "Home page",
        style: TextStyle(
            color: Colors.blue, fontSize: 40, fontStyle: FontStyle.italic),
      )),
      drawer: const Drawer(),
    );
  }
}
