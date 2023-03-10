import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

// this is our stateless widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const HomePage(),
      // theme => chnage top nav color
      theme: ThemeData(primarySwatch: Colors.deepOrange),

// routes 2 parameter. staring and function

// initialRoute => means default route
      initialRoute: "/home",

      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        // "/register":(context)=>
      },
    );
  }
}
