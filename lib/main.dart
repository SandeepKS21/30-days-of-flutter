import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/utils/routes.dart';

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

// "debugShowCheckedModeBanner"=> remove dubug banner from edge of the app
      debugShowCheckedModeBanner: false,

// routes 2 parameter. staring and function

// initialRoute => means default route
      initialRoute: "/",

      routes: {
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        // "/register":(context)=>
      },
    );
  }
}
