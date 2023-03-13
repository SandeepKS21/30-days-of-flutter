import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData lighTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepOrange,

        // "appBarTheme"=> change app bar theme, color
        appBarTheme: AppBarTheme(
          color: Colors.white, elevation: 0.0,

          // "iconTheme"=> it chnages app bar icon color to black. ex side bar logo
          iconTheme: const IconThemeData(color: Colors.black),
          // ignore: deprecated_member_use
          textTheme: Theme.of(context).textTheme,
        ),
      );
}
