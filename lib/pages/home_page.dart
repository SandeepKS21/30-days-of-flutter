import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int days = 30;

    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter"),
      ),
      body: const Center(
        child: Text("$days of Flutter"),
      ),
      // drawer => sidebar
      drawer: const Drawer(),
    );
  }
}
