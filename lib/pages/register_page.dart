import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/utils/routes.dart';

// ignore_for_file: prefer_const_constructors
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerKey = GlobalKey<FormState>();

  login(BuildContext context) {
    if (!_registerKey.currentState!.validate()) {
      return;
    }
    Navigator.pushNamed(context, MyRoutes.loginRoute,
        arguments: "Register Succesful");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Regsiter")),
      body: SingleChildScrollView(
        child: Form(
          key: _registerKey,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                child: Image.asset(
                  "assets/images/register.png",
                  scale: 3,
                ),
              ),
            ),
            Text(
              "Register",
              style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "enter your name", labelText: "Name"),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Enter Your Name";
                    }

                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Your password", labelText: "Password"),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Enter Your Password";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 70,
                ),
                Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    // ignore: avoid_print
                    onTap: () => login(context),

                    child: AnimatedContainer(
                      alignment: Alignment.center,
                      height: 40,
                      width: 100,
                      duration: Duration(seconds: 1),
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
