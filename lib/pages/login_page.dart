// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/utils/routes.dart';

// "stateless widget" => nothing is hanging in the screen
// "StatefulWidget" => can make chnages in screen. we can refresh screen
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // "SingleChildScrollView" will make page scrollable
      child: SingleChildScrollView(
        child: Column(
          children: [
            // image.asset will show all image that is present asset
            Image.asset("assets/images/login.png", fit: BoxFit.cover),
            // to add speace between widgit use sized box
            const SizedBox(
              height: 20,
              // width: 70,
            ),
            Text(
              "Login $name",
              style: const TextStyle(
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter user name", labelText: "User name"),
                    // "onChanged" => will get a callback value that we will assign to our name variable
                    onChanged: (value) {
                      name = value;

                      // "setState" when it is called it chnages the whole UI (call build method again)(refresh the pagge). It only works in stateful widgit

                      setState(() {});
                    },
                  ),
                  TextFormField(
                    // "obscureText"=> it will hide password
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Passord", labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Login button
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //       minimumSize: const Size(100, 40),
                  //       foregroundColor: Colors.white, //button text color
                  //       backgroundColor: Colors.blueAccent, //button color

                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(8),
                  //       )),
                  //   onPressed: () {
                  //     // "Navigator.push" => means go 1 class up
                  //     // "Navigator.pop" => go 1 class back
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: const Text(
                  //     "Login",
                  //     style: TextStyle(fontSize: 20),
                  //   ),
                  // )

                  // custom login button with animation

                  // "InkWell" =>to make any widgit clickable we can use inkwell
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });

                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    // "AnimatedContainer" => It is a container with animation
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 70 : 110,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 20 : 8)),
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
