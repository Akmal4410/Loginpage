// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:projects/main.dart';
import 'package:projects/screens/screen_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  final userName = "user";
  final password = "pass";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              const SizedBox(height: 50),
              TextFormField(
                controller: _userNameController,
                decoration: const InputDecoration(
                  labelText: "User Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Empty username";
                  } else if (value != userName) {
                    return "Invalid username";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Empty password";
                  } else if (value != password) {
                    return "Invalid password";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    getUserData(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 15.0),
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: "SourceSanspro",
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  getUserData(BuildContext context) async {
    final _username = _userNameController.text;
    final _password = _passwordController.text;
    if (userName == _username && password == _password) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(LOGGEDIN_KEY, true);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    }
  }
}
