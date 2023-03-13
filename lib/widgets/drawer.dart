// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/utils/routes.dart';

// ignore_for_file: prefer_const_constructors

class Mydrawr extends StatelessWidget {
  const Mydrawr({super.key});

  @override
  Widget build(BuildContext context) {
    Login(BuildContext context) {
      Navigator.pushNamed(context, MyRoutes.loginRoute);
    }

    Register(BuildContext context) {
      Navigator.pushNamed(context, MyRoutes.registerRoute);
    }

    const imageUrl =
        "https://cdn.pixabay.com/photo/2016/08/11/23/48/mountains-1587287_960_720.jpg";

    return Drawer(
      // "ListView" => we can store item in array
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          // "EdgeInsets.zero"=> it will make padding 0
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                // decoration: BoxDecoration(color: Colors.deepOrange),
                accountName: Text("sandeep"),
                accountEmail: Text("sandeep@gmail.com"),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
              ),
            ),
            ListTile(
              onTap: () => Login(context),
              leading:
                  Icon(CupertinoIcons.checkmark_shield, color: Colors.white),
              title: Text(
                "Login",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () => Register(context),
              leading: Icon(CupertinoIcons.add, color: Colors.white),
              title: Text(
                "Register",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Mail",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
